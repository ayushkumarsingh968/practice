import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'header_widget.dart';
import 'info.dart';

List<Detail> detailList = [
  Detail("2018-2022", "B.Tech", "Anand Engineering College,Ketham Agra",
      "Completed my graduation in Computer Science & Technology."),
  Detail("2017-2018", "Intermediate",
      "Reliance Academy,Rapti Nagar Phase-4 Gorakhpur", "I have completed my Schooling with PCM (CBSE)"),
  Detail("2015-2016", "High school",
      "Blossom Senior Secondary school Maniram Gorakhpur", "I have completed my Schooling with PCM (CBSE)"),
];

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late final AnimationController _left = AnimationController(
    duration: const Duration(milliseconds: 2000),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.5, 0.0),
    end: const Offset(0.00, 0.0),
  ).animate(CurvedAnimation(
    parent: _left,
    curve: Curves.ease,
  ));
  late final AnimationController _right = AnimationController(
    duration: const Duration(milliseconds: 2000),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation1 = Tween<Offset>(
    begin: const Offset(0.5, 0.0),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _right,
    curve: Curves.ease,
  ));

  @override
  initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
  }

  @override
  dispose() {
    _controller.dispose();
    _left.dispose();
    _right.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth > 1035) {
          return MouseRegion(
            onEnter: (event) {
              _controller.forward();
              _left.forward();
              _right.forward();
            },
            child: Column(
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: FixedTimeline.tileBuilder(
                        theme: TimelineThemeData(
                          indicatorPosition: BorderSide.strokeAlignInside
                        ),
                        builder: TimelineTileBuilder.connectedFromStyle(
                          contentsAlign: ContentsAlign.basic,
                          oppositeContentsBuilder: (context, index) =>
                              SlideTransition(
                            position: _offsetAnimation,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                    padding: const EdgeInsets.only(
                                        top: 40, left: 15),
                                    text: detailList[index].heading,
                                    fontSize: 25,
                                    color: const Color(0xff182153),
                                    fontWeight: null,
                                  ),
                                  Header(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 15),
                                    text: detailList[index].subHeading,
                                    fontSize: 20,
                                    color: const Color(0xff182153),
                                    fontWeight: null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          contentsBuilder: (context, index) => SlideTransition(
                            position: _offsetAnimation1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 15),
                                      text: detailList[index].contentHeading,
                                      fontSize: 25,
                                      color: const Color(0xff182153),
                                      fontWeight: null),
                                  Header(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                      text: detailList[index].contentSubHeading,
                                      fontSize: 20,
                                      color: const Color(0xff182153),
                                      fontWeight: null),
                                ],
                              ),
                            ),
                          ),
                          connectorStyleBuilder: (context, index) =>
                              ConnectorStyle.solidLine,
                          indicatorStyleBuilder: (context, index) =>
                              IndicatorStyle.dot,
                          indicatorPositionBuilder: (context, index) => 0.5,
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (dimens.maxWidth < 500) {
          return Column(children: [
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
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: SizedBox(
                  height: 600,
                  width: 300,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Header(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              text: detailList[index].heading,
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            Header(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              text: detailList[index].subHeading,
                              fontSize: 15,
                              color: const Color(0xff182153),
                              fontWeight: null,
                            ),
                            Header(
                                padding:
                                const EdgeInsets.only(top: 20, left: 15),
                                text: detailList[index].contentHeading,
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            Header(
                                padding:
                                const EdgeInsets.only(top: 10, left: 15),
                                text: detailList[index].contentSubHeading,
                                fontSize: 15,
                                color: const Color(0xff182153),
                                fontWeight: null),
                          ],
                        );
                      }),
                ))
          ]);
        }
        else {
          return MouseRegion(
            onEnter: (event) {
              _controller.forward();
              _left.forward();
              _right.forward();
            },
            child: Column(
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 830,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: FixedTimeline.tileBuilder(
                        theme: TimelineThemeData(
                            indicatorPosition: BorderSide.strokeAlignInside
                        ),
                        builder: TimelineTileBuilder.connectedFromStyle(
                          contentsAlign: ContentsAlign.basic,
                          oppositeContentsBuilder: (context, index) =>
                              SlideTransition(
                            position: _offsetAnimation,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                    padding: const EdgeInsets.only(
                                        top: 40, left: 15),
                                    text: detailList[index].heading,
                                    fontSize: 25,
                                    color: const Color(0xff182153),
                                    fontWeight: null,
                                  ),
                                  Header(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 15),
                                    text: detailList[index].subHeading,
                                    fontSize: 20,
                                    color: const Color(0xff182153),
                                    fontWeight: null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          contentsBuilder: (context, index) => SlideTransition(
                            position: _offsetAnimation1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 15),
                                      text: detailList[index].contentHeading,
                                      fontSize: 25,
                                      color: const Color(0xff182153),
                                      fontWeight: null),
                                  Header(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                      text: detailList[index].contentSubHeading,
                                      fontSize: 20,
                                      color: const Color(0xff182153),
                                      fontWeight: null),
                                ],
                              ),
                            ),
                          ),
                          connectorStyleBuilder: (context, index) =>
                              ConnectorStyle.solidLine,
                          indicatorStyleBuilder: (context, index) =>
                              IndicatorStyle.dot,
                          indicatorPositionBuilder: (context, index) => 0.2,
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
