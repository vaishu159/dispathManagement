import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle? textStyle;
  final double borderRadius;
  final EdgeInsets padding;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textStyle,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
