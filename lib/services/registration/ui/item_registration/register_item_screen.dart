import 'package:dispatch_management_system/services/registration/bloc/registration_bloc.dart';
import 'package:dispatch_management_system/services/registration/ui/item_registration/register_item_view.dart';
import 'package:dispatch_management_system/services/registration/ui/register_customer_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterItemScreen extends StatelessWidget {
  static const String routeName = "/itemRegistration";

  const RegisterItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(),
      child: RegisterItemView(),
    );
  }
}
