import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'widgets/social.dart';
import 'widgets/contact_Field.dart';
import 'widgets/header_widget.dart';
import 'widgets/heading.dart';
import 'widgets/image_widget.dart';
import 'widgets/info.dart';
import 'widgets/skill.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
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
  List<Detail> detailList = [
    Detail("2018-2022", "B.Tech", "Anand Engineering College,Ketham Agra",
        "Computer Science and Engineering"),
    Detail("2017-2018", "Intermediate",
        "Reliance Academy,Rapti Nagar Phase-4 Gorakhpur", "PCM (CBSE)"),
    Detail("2015-2016", "High school",
        "Blossom Senior Secondary school Maniram Gorakhpur", "PCM (CBSE)"),
  ];
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  // List<String> skill = [
  //   "Flutter",
  //   "Dart",
  //   "Firebase Tools",
  //   "Bloc Architecture",
  //   "Cubit Architecture",
  //   "GitLab",
  //   "GitHub",
  //   "UI",
  //   "Android Studio",
  //   "Animation",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 101,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: const [
                Header(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "Ayush Kumar Singh",
                  fontSize: 30,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                Heading(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "EXPERIENCE",
                  fontSize: 15,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 50,
                ),
                Heading(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "EDUCATION",
                  fontSize: 15,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 50,
                ),
                // Header(
                //   padding: EdgeInsets.only(top: 20, left: 15),
                //   text: "Clients",
                //   fontSize: 20,
                //   color: Color(0xff182153),
                //   fontWeight: FontWeight.bold,
                // ),
                // SizedBox(
                //   width: 50,
                // ),
                Heading(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "SKILLS",
                  fontSize: 15,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 50,
                ),
                Heading(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "PROJECTS",
                  fontSize: 15,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 50,
                ),
                Heading(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "CONTACT",
                  fontSize: 15,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Photo(
                            height: 600,
                            width: MediaQuery.of(context).size.width,
                            color: null,
                            image: Image.asset(
                              "images/background.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 600,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xff182153).withOpacity(0.75),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 115),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Photo(
                                height: 500,
                                width: 500,
                                color: const Color(0xffEFEFEF),
                                image: Image.asset(
                                  "images/myImage.jpg",
                                  fit: BoxFit.fill,
                                )),
                            Container(
                                height: 500,
                                width: 500,
                                color: const Color(0xffEFEFEF),
                                child: Column(
                                  children: const [
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 30, left: 20),
                                      text: 'Ayush Kumar Singh',
                                      fontSize: 35,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 20),
                                      text: 'Flutter Developer',
                                      fontSize: 25,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 20),
                                      text: 'Phone:',
                                      fontSize: 20,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 20),
                                      text: '8707091632',
                                      fontSize: 15,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 20),
                                      text: 'Email:',
                                      fontSize: 20,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 20),
                                      text: 'ayushkumarsingh968@gmail.com',
                                      fontSize: 15,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 20),
                                      text: 'Address:',
                                      fontSize: 20,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 20),
                                      text: 'Noida',
                                      fontSize: 15,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 20),
                                      text: 'Date Of Birth:',
                                      fontSize: 20,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Header(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 20),
                                      text: '17/11/1999',
                                      fontSize: 15,
                                      color: Color(0xff182153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffEFEFEF),
                    child: Container(
                      margin: const EdgeInsets.only(left: 459, right: 459),
                      height: 75,
                      width: MediaQuery.of(context).size.width / 2,
                      color: const Color(0xff182153),
                      child: const SocialMedia(
                        color: Colors.white,
                        alignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffEFEFEF),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Header(
                          padding: EdgeInsets.only(top: 20, left: 15),
                          text: "Hello! I'm Ayush",
                          fontSize: 20,
                          color: null,
                          fontWeight: null,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 200,
                          width: 700,
                          child: Text(
                            "As a self-driven Flutter Developer with 1.5+"
                            "years of experience, I strive for"
                            "excellence and aim to be the most prized "
                            "possession of any organization."
                            "With a passion for continuous learning "
                            "and a hunger"
                            "for new technologies, I'm a quick study "
                            "and eager to expand my skill set."
                            "Let's create something amazing together!",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                  text: infoList[index].heading,
                                  fontSize: 25,
                                  color: const Color(0xff182153),
                                  fontWeight: null,
                                ),
                                Header(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 15),
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
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 15),
                                    text: infoList[index].contentHeading,
                                    fontSize: 25,
                                    color: const Color(0xff182153),
                                    fontWeight: null),
                                Header(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 15),
                                    text: infoList[index].contentSubHeading,
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
                          indicatorPositionBuilder: (context, index) => 0.2,
                          itemCount: 2,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffEFEFEF),
                    thickness: 2,
                  ),
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
                                      const EdgeInsets.only(top: 40, left: 15),
                                  text: detailList[index].heading,
                                  fontSize: 25,
                                  color: const Color(0xff182153),
                                  fontWeight: null,
                                ),
                                Header(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 15),
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
                  Column(
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
                  ),
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
                  Container(
                    height: 661,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffEFEFEF),
                    child: Column(
                      children: [
                        const Header(
                            padding: EdgeInsets.only(top: 20, left: 15),
                            text: "CONTACT ME",
                            fontSize: 35,
                            color: Color(0xff182153),
                            fontWeight: null),
                        const Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 340, top: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ContactField(
                                          title: "First Name",
                                          height: 50,
                                          width: 250,
                                          controller: firstnameController,
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        ContactField(
                                          title: "Last Name",
                                          height: 50,
                                          width: 250,
                                          controller: lastnameController,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ContactField(
                                        title: "Email",
                                        height: 50,
                                        width: 530,
                                        controller: emailController),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ContactField(
                                        title: "Type your message here...",
                                        height: 150,
                                        width: 530,
                                        controller: messageController),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 530,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff182153),
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Submit'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              const VerticalDivider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                              Expanded(
                                child: IntrinsicHeight(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 0),
                                              text: "Ayush Kumar Singh",
                                              fontSize: 30,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 10),
                                              text: "Flutter Developer",
                                              fontSize: 15,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 30),
                                              text: "Phone",
                                              fontSize: 20,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 10),
                                              text: "8707091632",
                                              fontSize: 15,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 30),
                                              text: "Email",
                                              fontSize: 20,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                          Header(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 10),
                                              text:
                                                  "ayushkumarsingh968@gmail.com",
                                              fontSize: 15,
                                              color: Color(0xff182153),
                                              fontWeight: null),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 70,
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                        thickness: 2,
                                        endIndent: 400,
                                        indent: 80,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 80, top: 20),
                                        child: SocialMedia(
                                          alignment: MainAxisAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: const Center(
                      child: Text("© 2023 By Ayush Kumar Singh."),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
