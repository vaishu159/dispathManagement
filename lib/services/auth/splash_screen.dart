import 'package:dispatch_management_system/services/dashboard/ui/dashboard_screen.dart';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      context.go(DashboardScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            Text('Welcome to MyApp', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
