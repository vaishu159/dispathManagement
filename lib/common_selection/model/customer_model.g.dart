// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as String,
      customerName: json['CustomerName'] as String,
      comapanyName: json['ComapanyName'] as String,
      mobileNumber: json['MobileNumber'] as String,
      emailId: json['EmailId'] as String,
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'CustomerName': instance.customerName,
      'ComapanyName': instance.comapanyName,
      'MobileNumber': instance.mobileNumber,
      'EmailId': instance.emailId,
    };
