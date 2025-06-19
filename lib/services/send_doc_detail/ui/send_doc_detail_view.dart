import 'package:dispatch_management_system/common_selection/bloc/common_list_bloc.dart';
import 'package:dispatch_management_system/common_selection/model/customer_model.dart';
import 'package:dispatch_management_system/components/common_textfield.dart';
import 'package:dispatch_management_system/components/open_date_picker.dart';
import 'package:dispatch_management_system/components/responsive_scaffold.dart';
import 'package:dispatch_management_system/components/textfield_validators.dart';
import 'package:dispatch_management_system/database_helper/app_database.dart';
import 'package:dispatch_management_system/database_helper/models/customer_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common_selection/ui/common_single_selection.dart';

class SendDocDetailView extends StatelessWidget {
  static const String routeName = "/sendDoc";

  SendDocDetailView({super.key});

  final _customerNameCon = TextEditingController();
  final _emailCon = TextEditingController();
  final _phoneNumberCon = TextEditingController();
  final _itemNameCon = TextEditingController();
  final _deliveryTimeCon = TextEditingController();
  final _lrNumberCon = TextEditingController();
  final _transPorterNameCon = TextEditingController();
  final TextEditingController _dateCon = TextEditingController(
    text: DateFormat('yyyy-MM-dd').format(DateTime.now()),
  );
  final _key = GlobalKey<FormState>();

  final db = AppDatabase();
  late final userService = CustomerModelService();

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Send Details',
      image: "assets/image/team.png",
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.2),
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Form(
          key: _key,
          child: Column(
            children: [
              CommonTextField(
                label: "Date",
                controller: _dateCon,
                readOnly: true,
                suffixIcon: Icon(Icons.calendar_month_outlined),
                onTap: () async {
                  DateTime? selectedDate = await showCommonDatePicker(context);
                  if (selectedDate != null) {
                    _dateCon.text = '${selectedDate.toLocal()}'.split(' ')[0];
                  }
                },
                validator: (value) =>
                    TextFieldValidators.required(value, fieldName: "Date"),
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "Customer Name",
                controller: _customerNameCon,
                suffixIcon: BlocListener<CommonListBloc, CommonListState>(
                    listener: (context, state) {
                      if (state is CommonListStateSuccess) {
                        final customerNames = state.customers.map((e) {
                          print("aghlkag${e.customerName}");
                          print("aghlkag${e.id}");

                          return e.customerName;
                        }).toList();

                        SearchableList<String>(
                          dataList: customerNames,
                          toStringFunc: (item) => item,
                          onSelected: (item) {
                            _customerNameCon.text = item;
                          },
                        ).show(context, title: 'Select a Customer');
                      } else if (state is CommonListStateLoading) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Fetching customers...')),
                        );
                      } else if (state is CommonListStateFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error: ${state.message}')),
                        );
                      }
                    },
                    child: InkWell(
                      onTap: () {
                        context
                            .read<CommonListBloc>()
                            .add(const CommonListEvent.fetchCustomers());
                      },
                      child: const Icon(Icons.plumbing),
                    )),
                validator: (value) {
                  return TextFieldValidators.required(value,
                      fieldName: "Customer Name");
                },
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "Email",
                controller: _emailCon,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return TextFieldValidators.email(value);
                },
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "Phone Number",
                controller: _phoneNumberCon,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                validator: (value) {
                  return TextFieldValidators.phone(value);
                },
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "Item Name",
                controller: _itemNameCon,
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "Tentative Delivery Time",
                controller: _deliveryTimeCon,
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "LR Number",
                controller: _lrNumberCon,
              ),
              SizedBox(height: 16),
              CommonTextField(
                label: "TransPorter Name",
                controller: _transPorterNameCon,
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () async {
                  if (_key.currentState?.validate() ?? false) {
                    final email = _emailCon.text.trim();
                    final phone = _phoneNumberCon.text.trim();
                    final message = '''Date: ${_dateCon.text} 
                    Customer: ${_customerNameCon.text}
                     Item: ${_itemNameCon.text}''';
                    final emailUri = Uri(
                      scheme: 'mailto',
                      path: email,
                      queryParameters: {
                        'subject': 'Document Details',
                        'body': message,
                      },
                    );

                    final whatsappUri = Uri.parse(
                        "https://wa.me/$phone?text=${Uri.encodeComponent(message)}");
                    if (await launchUrl(emailUri)) {
                      await launchUrl(emailUri);
                    }

                    if (await canLaunchUrl(whatsappUri)) {
                      await launchUrl(whatsappUri);
                    }
                    // context.read<SendDetailBloc>().add(
                    //     SendDetailEvent.sendDetailsEvent(
                    //         whatsappUri: whatsappUri, emailUri: emailUri));
                  }
                },
                icon: Icon(Icons.send),
                label: Text("Send Detail"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
