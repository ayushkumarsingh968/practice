import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key, required this.height, required this.width, required this.color, required this.image}) : super(key: key);
final double? height;
final double? width;
final Color? color;
final Image? image;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: height,
        width: width,
        color: color,
        child: image);
  }
}
