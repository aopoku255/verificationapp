import 'package:flutter/material.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final double radius;
  final double horizontal;
  final double vertical;
  final double fontSize;
  final onTap;
  const Button({
    super.key,
    required this.text,
    this.color = AppColors.primaryBtn,
    this.onTap,
    this.radius = 12.0,
    this.horizontal = 50,
    this.vertical = 15,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
