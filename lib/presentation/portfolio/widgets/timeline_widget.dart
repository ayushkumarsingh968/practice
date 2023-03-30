import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'header_widget.dart';

class TimelineDetail extends StatelessWidget {
  final String title;
 final String heading;
 final String subHeading;
 final String contentHeading;
 final String contentSubHeading;
 final double position;
   const TimelineDetail({Key? key, required this.title, required this.heading, required this.subHeading, required this.contentHeading, required this.contentSubHeading, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
            child: Header(
                padding: EdgeInsets.only(top: 20, left: 15),
                text: title,
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
                        padding:
                        const EdgeInsets.only(top: 30, left: 15),
                        text: heading,
                        fontSize: 25,
                        color: const Color(0xff182153),
                        fontWeight: null,
                      ),
                      Header(
                        padding:
                        const EdgeInsets.only(top: 20, left: 15),
                        text: subHeading,
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
                          padding: const EdgeInsets.only(
                              top: 30, left: 15),
                          text: contentHeading,
                          fontSize: 25,
                          color: const Color(0xff182153),
                          fontWeight: null),
                      Header(
                          padding: const EdgeInsets.only(
                              top: 20, left: 15),
                          text: contentSubHeading,
                          fontSize: 20,
                          color: const Color(0xff182153),
                          fontWeight: null),
                    ],
                  ),
                ),
                connectorStyleBuilder: (context, index) =>
                ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) =>
                IndicatorStyle.dot,
                indicatorPositionBuilder: (context, index) => position,
                itemCount: 3,
              ),
            ),
          ),
        ),
      ],
    ) ;
  }
}
