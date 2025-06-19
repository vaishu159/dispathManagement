import 'package:dispatch_management_system/services/dashboard/bloc/dashboard_bloc.dart';
import 'package:dispatch_management_system/services/dashboard/ui/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "/dashBoard";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: DashboardView(),
    );
  }
}
