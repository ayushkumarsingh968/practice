import 'package:flutter/material.dart';

import 'header_widget.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> with TickerProviderStateMixin {
  @override
  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Header(
                padding: EdgeInsets.only(top: 20, left: 15),
                text: "PROJECTS",
                fontSize: 35,
                color: Color(0xff182153),
                fontWeight: null)),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Color(0xffEFEFEF),
          thickness: 2,
        ),
        FadeTransition(
          opacity: _animation,
          child: MouseRegion(
            onEnter: (event){
              _controller.forward();
            },
            child: SizedBox(
              height: 360,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Header(
                          padding: EdgeInsets.only(top: 20),
                          text: "MOB HRM",
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Text(
                          "Responsible for the design,build,deployment ,debug & maintenance of Android application for Google play and App Store.\n"
                              "Mob's HRM is an in-house app for Mobcoder employee contains employee’s daily Attendance ,"
                              "Leave Record,Project Record,Reimbursement Holiday list and many more.",
                          style: TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Header(
                          padding: EdgeInsets.only(top: 20),
                          text: "MOB KITCHEN",
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Text(
                          "Mob's Kitchen is an in-house app for Mobcoder employee in which user can place their orders with any desired vendor.",
                          style: TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
