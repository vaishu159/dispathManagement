import 'package:dispatch_management_system/components/textfield_validators.dart';
import 'package:dispatch_management_system/services/registration/bloc/registration_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dispatch_management_system/components/common_button.dart';
import 'package:dispatch_management_system/components/common_textfield.dart';
import 'package:dispatch_management_system/components/responsive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterItemView extends StatelessWidget {
  RegisterItemView({super.key});

  final _customerNameCon = TextEditingController();
  final _companyNameCon = TextEditingController();
  final _mobileCon = TextEditingController();
  final _emailCon = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: "Add New Customer",
      image: "assets/image/team.png",
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 20,
          children: [
            CommonTextField(
              label: "Customer Name",
              controller: _customerNameCon,
              validator: (value) => TextFieldValidators.required(value,
                  fieldName: "Customer Name"),
            ),
            CommonTextField(
              label: "Company Name",
              controller: _companyNameCon,
              validator: (value) => TextFieldValidators.required(value,
                  fieldName: "Company Name"),
            ),
            CommonTextField(
              label: "Mobile number",
              controller: _mobileCon,
              validator: (value) {
                TextFieldValidators.phone(value);
              },
            ),
            CommonTextField(
              label: "Email Id",
              controller: _emailCon,
              validator: (value) {
                TextFieldValidators.required(value, fieldName: "Email ID");
                TextFieldValidators.email(value);
              },
            ),
            BlocListener<RegistrationBloc, RegistrationState>(
              listener: (context, state) {
                if (state is RegistrationSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('User Is Registered '
                            'Successfully')),
                  );
                }
              },
              child: CommonButton(
                text: 'Register Customer',
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    context.read<RegistrationBloc>().add(
                        RegistrationEvent.submit(
                            customerName: _customerNameCon.text,
                            companyName: _companyNameCon.text,
                            mobile: _mobileCon.text,
                            email: _emailCon.text));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
