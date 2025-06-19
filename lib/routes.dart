import 'package:dispatch_management_system/services/auth/splash_screen.dart';
import 'package:dispatch_management_system/services/dashboard/routes.dart';
import 'package:dispatch_management_system/services/registration/routes.dart';
import 'package:dispatch_management_system/services/send_doc_detail/routes.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => SplashScreen(),
    ),
    // ...authRoutes,
    ...docRoute,
    ...registrationRoute,
    ...dashBoardRoute,
  ],
);
