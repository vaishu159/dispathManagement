import 'package:dispatch_management_system/services/registration/ui/register_customer_screen.dart';
import 'package:go_router/go_router.dart';


final registrationRoute = [
  GoRoute(
    path: RegisterCustomerScreen.routeName,
    builder: (context, state) => RegisterCustomerScreen(),
  ),

];
