import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
 final String text;
   const Skill({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 40),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width/5,
        color: Colors.white.withOpacity(0.1),
        child:  Center(
          child: Text(
            text,style: const TextStyle(fontSize: 20,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
