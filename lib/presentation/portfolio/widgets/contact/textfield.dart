import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  const TextFieldName({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 17),
        ),
      ],
    );
  }
}
