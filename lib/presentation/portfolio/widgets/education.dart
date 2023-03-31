import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'header_widget.dart';
import 'info.dart';

List<Detail> detailList = [
  Detail("2018-2022", "B.Tech", "Anand Engineering College,Ketham Agra",
      "Computer Science and Engineering"),
  Detail("2017-2018", "Intermediate",
      "Reliance Academy,Rapti Nagar Phase-4 Gorakhpur", "PCM (CBSE)"),
  Detail("2015-2016", "High school",
      "Blossom Senior Secondary school Maniram Gorakhpur", "PCM (CBSE)"),
];
class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> with TickerProviderStateMixin {
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
                text: "EDUCATION",
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
                            padding: const EdgeInsets.only(top: 40, left: 15),
                            text: detailList[index].heading,
                            fontSize: 25,
                            color: const Color(0xff182153),
                            fontWeight: null,
                          ),
                          Header(
                            padding: const EdgeInsets.only(top: 20, left: 15),
                            text: detailList[index].subHeading,
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
                              padding: const EdgeInsets.only(top: 40, left: 15),
                              text: detailList[index].contentHeading,
                              fontSize: 25,
                              color: const Color(0xff182153),
                              fontWeight: null),
                          Header(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              text: detailList[index].contentSubHeading,
                              fontSize: 20,
                              color: const Color(0xff182153),
                              fontWeight: null),
                        ],
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                    indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                    indicatorPositionBuilder: (context, index) => 0.5,
                    itemCount: 3,
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
