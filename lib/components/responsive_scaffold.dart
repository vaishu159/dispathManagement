import 'package:dispatch_management_system/components/responsive.dart';
import 'package:dispatch_management_system/components/side_menu_widget.dart';
import 'package:flutter/material.dart';

class ResponsiveScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final String? image;

  const ResponsiveScaffold({
    super.key,
    required this.title,
    required this.child,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9F4),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFFFEF9F4),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isWide =
                Responsive.isDesktop(context) || Responsive.isTablet(context);
            Widget? imageWidget;
            if (image != null && image!.isNotEmpty) {
              imageWidget = Image.asset(
                image!,
                width: isWide ? 350 : null,
                height: isWide ? null : 350,
                fit: BoxFit.cover,
              );
            }

            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isWide ? 1000 : double.infinity,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: isWide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (imageWidget != null)
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 16, left: 16),
                              child: imageWidget,
                            ),
                          Expanded(child: child),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (imageWidget != null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Center(child: imageWidget),
                            ),
                          child,
                        ],
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
