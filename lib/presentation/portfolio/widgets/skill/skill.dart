import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
 final String text;
 final double size;
    const Skill({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 40),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width/4.8,
        color: Colors.white.withOpacity(0.1),
        child:  Center(
          child: Text(
            textAlign:TextAlign.center,
            text,style:  TextStyle(fontSize: size,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
