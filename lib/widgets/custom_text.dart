import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.weight,
      this.color,
      this.textDecoration,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size ?? 16,
        color: color ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal,
        decoration: textDecoration,
      ),
    );
  }
}
