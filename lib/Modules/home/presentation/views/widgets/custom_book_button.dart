import 'package:flutter/material.dart';

class CustomBookButton extends StatelessWidget {
  const CustomBookButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.border,
    required this.textColor,
    this.onPressed,
  });
  final Color backgroundColor;
  final String text;
  final BorderRadius? border;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: TextButton(
        onPressed: onPressed,

        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,

          shape: RoundedRectangleBorder(
            borderRadius: border ?? BorderRadius.zero,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
