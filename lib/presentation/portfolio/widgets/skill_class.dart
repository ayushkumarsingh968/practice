import 'package:flutter/material.dart';

import 'skill.dart';

class SkillClass extends StatelessWidget {
  const SkillClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff182153),
          child: const Center(
            child: SizedBox(
                height: 50,
                width: 150,
                child: Text(
                  "SKILLS",
                  style: TextStyle(
                      fontSize: 35, color: Colors.white),
                )),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Stack(
          children: [
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "images/skill-background.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff182153).withOpacity(0.75),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Skill(text: "Flutter"),
                      Skill(text: "Dart"),
                      Skill(text: "Firebase Tools"),
                      Skill(text: "Bloc Architecture"),
                    ],
                  ),
                  Row(
                    children: const [
                      Skill(text: "Cubit Architecture"),
                      Skill(text: "GitLab"),
                      Skill(text: "GitHub"),
                      Skill(text: "UI"),
                    ],
                  ),
                  Row(
                    children: const [
                      Skill(text: "Android Studio"),
                      Skill(text: "Animation"),
                    ],
                  ),
                ],
              ),
            )
            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 40),
            //   child: GridView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: skill.length,
            //     gridDelegate:
            //         const SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2,
            //             crossAxisSpacing: 40.0,
            //             mainAxisSpacing: 40.0),
            //     itemBuilder:
            //         (BuildContext context, int index) {
            //       return Container(
            //         height: 80,
            //         width: 415,
            //         color: Colors.white.withOpacity(0.1),
            //         child: Center(
            //           child: Text(
            //             skill[index],
            //             style: const TextStyle(
            //                 fontSize: 40, color: Colors.white),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
