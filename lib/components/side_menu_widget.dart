import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Text('Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {}, // Handle navigation
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Order History'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Support'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
