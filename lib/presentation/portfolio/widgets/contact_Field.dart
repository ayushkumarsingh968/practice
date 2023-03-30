import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'textfield.dart';

class ContactField extends StatelessWidget {
  const ContactField({
    Key? key,
    required this.title,
    required this.height,
    required this.width,
    required this.controller,
  }) : super(key: key);
  final String title;
  final double height;
  final double width;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldName(text: title),
        Container(
          height: height,
          width: width,
          margin: const EdgeInsets.only(top: 10),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(40),
            ],
            maxLines: 5,
            controller: controller,

            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabled: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 15.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(color: Colors.black)),
            ),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
        ),
      ],
    );
  }
}
