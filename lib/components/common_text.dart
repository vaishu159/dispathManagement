import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  const CommonText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
