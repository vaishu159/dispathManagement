import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
  final String? label;
  final bool? isDense;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? readOnly;
  final FocusNode? focusNode;

  const CommonTextField({
    super.key,
    this.label,
    this.isDense,
    this.prefixIcon,
    this.validator,
    this.controller,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.onTap,
    this.readOnly,
    this.suffixIcon,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      validator: validator,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      autocorrect: true,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      onChanged: onChanged,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: label,
        isDense: isDense ?? true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 0.5,
            color: Colors.blue, // Optional: focus color
          ),
        ),
      ),
    );
  }
}
