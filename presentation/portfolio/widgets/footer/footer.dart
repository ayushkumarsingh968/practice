import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: const Center(
        child: Text("© 2023 By Ayush Kumar Singh."),
      ),
    );
  }
}
