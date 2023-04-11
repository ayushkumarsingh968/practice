import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'scroll_heading.dart';
 

class Header extends StatelessWidget {
  final ScrollController controller;
   const Header({Key? key , required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutBuilder(
          builder: (context, dimens) {
            if (dimens.maxWidth > 1035) {
              return SizedBox(
                height: 101,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Heading(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      text: "Ayush Kumar Singh",
                      fontSize: 30,
                      color: Color(0xff182153),
                      fontWeight: FontWeight.bold,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        controller.animateTo(
                          1000,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const ScrollHeading(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        text: "EXPERIENCE",
                        fontSize: 15,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.animateTo(
                          1700,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const ScrollHeading(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        text: "EDUCATION",
                        fontSize: 15,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.animateTo(
                          2300,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const ScrollHeading(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        text: "SKILLS",
                        fontSize: 15,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.animateTo(
                          2800,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const ScrollHeading(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        text: "PROJECTS",
                        fontSize: 15,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.animateTo(
                          3200,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: const ScrollHeading(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        text: "CONTACT",
                        fontSize: 15,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              );
            }
            if (dimens.maxWidth < 500) {
              return SafeArea(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      const Heading(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        text: "Ayush Kumar Singh",
                        fontSize: 30,
                        color: Color(0xff182153),
                        fontWeight: FontWeight.bold,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 30),
                        child: GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: const Icon(Icons.menu)),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return SizedBox(
                height: 101,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Heading(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      text: "Ayush Kumar Singh",
                      fontSize: 30,
                      color: Color(0xff182153),
                      fontWeight: FontWeight.bold,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 30),
                      child: GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: const Icon(Icons.menu)),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
