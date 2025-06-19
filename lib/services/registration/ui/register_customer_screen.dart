import 'package:dispatch_management_system/services/registration/bloc/registration_bloc.dart';
import 'package:dispatch_management_system/services/registration/ui/register_customer_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCustomerScreen extends StatelessWidget {
  static const String routeName = "/registration";

  const RegisterCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(),
      child: RegisterCustomerView(),
    );
  }
}
