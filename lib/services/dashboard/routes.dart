import 'package:dispatch_management_system/services/dashboard/ui/dashboard_screen.dart';
import 'package:go_router/go_router.dart';

final dashBoardRoute = [
  GoRoute(
    path: DashboardScreen.routeName,
    builder: (context, state) => DashboardScreen(),
  ),
];
