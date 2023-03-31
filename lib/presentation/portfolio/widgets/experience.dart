import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'header_widget.dart';
import 'info.dart';

List<Info> infoList = [
  Info(
      "2022-Present",
      "Flutter Developer",
      "Mobcoder",
      "Designed, Implemented, and tested Flutter and Dart code "
          "\nusing bloc pattern, stream and Cubit architecture and also"
          "\nImplemented firebase (Firebase login, Firebase real-time Database, Firestore, Analytics, push notification ) ."
          "\nDesigned, Implemented, and tested Flutter and Dart code for Android, IOS and Web platforms ."),
  Info(
      "Oct 2021-Nov 2021",
      "Web development Intern",
      "The Sparks Foundation",
      "Throughout my internship experience, "
          "I devlop front-end web application using HTML,CSS, "
          "through the support and guidance of my mentor."),
];
class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> with TickerProviderStateMixin {
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
                text: "EXPERIENCE",
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
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width / 1.1,
                child: FixedTimeline.tileBuilder(
                  builder: TimelineTileBuilder.connectedFromStyle(
                    contentsAlign: ContentsAlign.basic,
                    oppositeContentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Header(
                            padding: const EdgeInsets.only(top: 30, left: 15),
                            text: infoList[index].heading,
                            fontSize: 25,
                            color: const Color(0xff182153),
                            fontWeight: null,
                          ),
                          Header(
                            padding: const EdgeInsets.only(top: 20, left: 15),
                            text: infoList[index].subHeading,
                            fontSize: 20,
                            color: const Color(0xff182153),
                            fontWeight: null,
                          ),
                        ],
                      ),
                    ),
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Header(
                              padding: const EdgeInsets.only(top: 30, left: 15),
                              text: infoList[index].contentHeading,
                              fontSize: 25,
                              color: const Color(0xff182153),
                              fontWeight: null),
                          Header(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              text: infoList[index].contentSubHeading,
                              fontSize: 20,
                              color: const Color(0xff182153),
                              fontWeight: null),
                        ],
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                    indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                    indicatorPositionBuilder: (context, index) => 0.2,
                    itemCount: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class Experience extends StatelessWidget {
//   const Experience({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Center(
//             child: Header(
//                 padding: EdgeInsets.only(top: 20, left: 15),
//                 text: "EXPERIENCE",
//                 fontSize: 35,
//                 color: Color(0xff182153),
//                 fontWeight: null)),
//         const SizedBox(
//           height: 20,
//         ),
//         const Divider(
//           color: Color(0xffEFEFEF),
//           thickness: 2,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: SizedBox(
//             height: 500,
//             width: MediaQuery.of(context).size.width / 1.1,
//             child: FixedTimeline.tileBuilder(
//               builder: TimelineTileBuilder.connectedFromStyle(
//                 contentsAlign: ContentsAlign.basic,
//                 oppositeContentsBuilder: (context, index) => Padding(
//                   padding: const EdgeInsets.only(right: 30),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Header(
//                         padding: const EdgeInsets.only(top: 30, left: 15),
//                         text: infoList[index].heading,
//                         fontSize: 25,
//                         color: const Color(0xff182153),
//                         fontWeight: null,
//                       ),
//                       Header(
//                         padding: const EdgeInsets.only(top: 20, left: 15),
//                         text: infoList[index].subHeading,
//                         fontSize: 20,
//                         color: const Color(0xff182153),
//                         fontWeight: null,
//                       ),
//                     ],
//                   ),
//                 ),
//                 contentsBuilder: (context, index) => Padding(
//                   padding: const EdgeInsets.only(left: 30),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Header(
//                           padding: const EdgeInsets.only(top: 30, left: 15),
//                           text: infoList[index].contentHeading,
//                           fontSize: 25,
//                           color: const Color(0xff182153),
//                           fontWeight: null),
//                       Header(
//                           padding: const EdgeInsets.only(top: 20, left: 15),
//                           text: infoList[index].contentSubHeading,
//                           fontSize: 20,
//                           color: const Color(0xff182153),
//                           fontWeight: null),
//                     ],
//                   ),
//                 ),
//                 connectorStyleBuilder: (context, index) =>
//                     ConnectorStyle.solidLine,
//                 indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
//                 indicatorPositionBuilder: (context, index) => 0.2,
//                 itemCount: 2,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
