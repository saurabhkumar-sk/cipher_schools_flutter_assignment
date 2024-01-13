import 'package:flutter/material.dart';

class HomeScreenCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color? color;
  final Color? backgroundColor;
  const HomeScreenCustomButton({
    super.key,
    required this.text,
    required this.ontap,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(90, 34)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor,
        ),
      ),
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
