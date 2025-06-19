import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  @JsonKey(name: "id")
  final String id;

  @JsonKey(name: "CustomerName")
  final String customerName;

  @JsonKey(name: "ComapanyName")
  final String comapanyName;

  @JsonKey(name: "MobileNumber")
  final String mobileNumber;

  @JsonKey(name: "EmailId")
  final String emailId;

  CustomerModel({
    required this.id,
    required this.customerName,
    required this.comapanyName,
    required this.mobileNumber,
    required this.emailId,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromMap(String id, Map<String, dynamic> map) {
    return CustomerModel(
      id: id,
      customerName: map['CustomerName'] ?? '',
      comapanyName: map['ComapanyName'] ?? '',
      mobileNumber: map['MobileNumber'] ?? '',
      emailId: map['EmailId'] ?? '',
    );
  }
}
