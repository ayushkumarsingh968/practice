import 'package:flutter/material.dart';

class Heading extends StatefulWidget {
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
  State<Heading> createState() => _HeadingState();
}

bool isHovered = false;

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: Text(widget.text,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: isHovered ? Colors.grey : widget.color,
                fontWeight: widget.fontWeight)),
      ),
    );
  }
}
