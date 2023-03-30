import 'package:flutter/material.dart';

class Heading extends StatefulWidget {
  Heading({
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

  bool isHovered = false;

  @override
  State<Heading> createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            widget.isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            widget.isHovered = false;
          });
        },
        child: Text(widget.text,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.isHovered?Colors.grey:widget.color,
                fontWeight: widget.fontWeight)),
      ),
    );
  }
}
//
// class Heading extends StatelessWidget {
//   Heading({
//     Key? key,
//     required this.padding,
//     required this.text,
//     required this.fontSize,
//     required this.color,
//     required this.fontWeight,
//   }) : super(key: key);
//
//   final EdgeInsetsGeometry padding;
//
//   final String text;
//
//   final double? fontSize;
//
//   final Color? color;
//
//   final FontWeight? fontWeight;
//
//   bool isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: padding,
//       child: MouseRegion(
//         onEnter: (event) {
//           setState(() { isHovered = true; });
//         },
//         onExit: (event) {
//           isHovered = false;
//         },
//         child: Text(text,
//             style: TextStyle(
//                 fontSize: fontSize, color: color, fontWeight: fontWeight)),
//       ),
//     );
//   }
// }
