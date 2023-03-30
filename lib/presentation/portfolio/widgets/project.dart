import 'package:flutter/material.dart';

import 'header_widget.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
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
        SizedBox(
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
      ],
    );
  }
}
