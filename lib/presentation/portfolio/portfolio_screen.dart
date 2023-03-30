import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/portfolio/widgets/contact.dart';
import 'package:my_portfolio/presentation/portfolio/widgets/education.dart';
import 'package:my_portfolio/presentation/portfolio/widgets/project.dart';
import 'package:my_portfolio/presentation/portfolio/widgets/skill_class.dart';
import 'widgets/experience.dart';
import 'widgets/social.dart';
import 'widgets/header_widget.dart';
import 'widgets/heading.dart';
import 'widgets/image_widget.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

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
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 101,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children:  [
                const Header(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  text: "Ayush Kumar Singh",
                  fontSize: 30,
                  color: Color(0xff182153),
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    _controller.animateTo(
                      1000,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Heading(
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
                  onTap: (){
                    _controller.animateTo(
                      1700,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Heading(
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
                GestureDetector(
                  onTap: (){
                    _controller.animateTo(
                      2300,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Heading(
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
                  onTap: (){
                    _controller.animateTo(
                      2800,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Heading(
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
                  onTap: (){
                    _controller.animateTo(
                      3200,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Heading(
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
          ),
          Expanded(
            child: ListView(
              controller: _controller,
              children: [
                Column(
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
                    Stack(
                      children: [
                        Container(
                          height: 475,
                          width: MediaQuery.of(context).size.width,
                          color: const Color(0xffEFEFEF),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Header(
                                padding: EdgeInsets.only(top: 100, left: 15),
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
                        Center(
                          child: Container(
                            height: 75,
                            width: 1000,
                            color: const Color(0xff182153),
                            child: const SocialMedia(
                              color: Colors.white,
                              alignment: MainAxisAlignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Experience(),
                    const Divider(
                      color: Color(0xffEFEFEF),
                      thickness: 2,
                    ),
                    const Education(),
                    const SkillClass(),
                    const Project(),
                    const Contact(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
