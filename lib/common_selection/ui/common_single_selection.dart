import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class SearchableList<T> {
  final List<T> dataList;
  final String Function(T) toStringFunc;
  final void Function(T) onSelected;

  SearchableList({
    required this.dataList,
    required this.toStringFunc,
    required this.onSelected,
  });

  Future<T?> show(BuildContext context, {String title = 'Select Item'}) async {
    T? selected;

    if (kIsWeb) {
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(title),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 400,
            child: _SearchListContent<T>(
              dataList: dataList,
              toStringFunc: toStringFunc,
              onSelected: (item) {
                selected = item;
                Navigator.pop(context);
              },
            ),
          ),
        ),
      );
    } else {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: Text(title)),
            body: _SearchListContent<T>(
              dataList: dataList,
              toStringFunc: toStringFunc,
              onSelected: (item) {
                selected = item;
                Navigator.pop(context);
              },
            ),
          ),
        ),
      );
    }

    onSelected(selected as T);
    return selected;
  }
}

class _SearchListContent<T> extends StatefulWidget {
  final List<T> dataList;
  final String Function(T) toStringFunc;
  final void Function(T) onSelected;

  const _SearchListContent({
    required this.dataList,
    required this.toStringFunc,
    required this.onSelected,
    super.key,
  });

  @override
  __SearchListContentState<T> createState() => __SearchListContentState<T>();
}

class __SearchListContentState<T> extends State<_SearchListContent<T>> {
  late List<T> filtered;
  String query = '';

  @override
  void initState() {
    super.initState();
    filtered = widget.dataList;
  }

  void search(String input) {
    setState(() {
      query = input;
      filtered = widget.dataList
          .where((item) => widget
              .toStringFunc(item)
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
          ),
          onChanged: search,
        ),
        Expanded(
          child: filtered.isEmpty
              ? const Center(child: Text('No results'))
              : ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (_, i) {
                    final item = filtered[i];
                    return ListTile(
                      title: Text(widget.toStringFunc(item)),
                      onTap: () => widget.onSelected(item),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
