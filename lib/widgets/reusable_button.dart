import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const ReusableButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
    this.borderRadius,
    this.fontSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor ?? Colors.white,
        backgroundColor: color ?? Theme.of(context).primaryColor,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        textStyle: TextStyle(
          fontSize: fontSize ?? 16.0,
        ),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
