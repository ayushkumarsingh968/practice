import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.padding,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;

  final String text;

  final double? fontSize;

  final Color? color;

  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize, color: color, fontWeight: fontWeight)),
    );
  }
}
