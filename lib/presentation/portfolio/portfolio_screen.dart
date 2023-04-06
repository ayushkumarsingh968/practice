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

class _PortfolioScreenState extends State<PortfolioScreen>
    with TickerProviderStateMixin {
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
  final ScrollController _controller = ScrollController();

  late AnimationController _animationController;
  late Animation<double> _animation;
  late final AnimationController _left = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.1, 0.0),
    end: const Offset(0.00, 0.0),
  ).animate(CurvedAnimation(
    parent: _left,
    curve: Curves.ease,
  ));
  late final AnimationController _top = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation2 = Tween<Offset>(
    begin: const Offset(0.0, -0.3),
    end: const Offset(0.00, 0.0),
  ).animate(CurvedAnimation(
    parent: _top,
    curve: Curves.ease,
  ));
  late final AnimationController _right = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation1 = Tween<Offset>(
    begin: const Offset(0.2, 0.0),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _right,
    curve: Curves.ease,
  ));

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn);

    _animationController.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
          children: [
            LayoutBuilder(
              builder: (context, dimens) {
                if (dimens.maxWidth > 1035) {
                  return SizedBox(
                    height: 101,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        const Header(
                          padding: EdgeInsets.only(top: 20, left: 15),
                          text: "Ayush Kumar Singh",
                          fontSize: 30,
                          color: Color(0xff182153),
                          fontWeight: FontWeight.bold,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            _controller.animateTo(
                              1000,
                              duration: const Duration(seconds: 1),
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
                          onTap: () {
                            _controller.animateTo(
                              1700,
                              duration: const Duration(seconds: 1),
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
                          onTap: () {
                            _controller.animateTo(
                              2300,
                              duration: const Duration(seconds: 1),
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
                          onTap: () {
                            _controller.animateTo(
                              2800,
                              duration: const Duration(seconds: 1),
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
                          onTap: () {
                            _controller.animateTo(
                              3200,
                              duration: const Duration(seconds: 1),
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
                  );
                }
                if (dimens.maxWidth < 500) {
                  return SafeArea(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Header(
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
                        const Header(
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                controller: _controller,
                children: [
                  LayoutBuilder(
                    builder: (context, dimens) {
                      if (dimens.maxWidth > 1035) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  color:
                                      const Color(0xff182153).withOpacity(0.75),
                                ),
                                FadeTransition(
                                  opacity: _animation,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 115),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SlideTransition(
                                          position: _offsetAnimation,
                                          child: Photo(
                                              height: 500,
                                              width: 500,
                                              color: const Color(0xffEFEFEF),
                                              image: Image.asset(
                                                "images/myImage.jpg",
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        SlideTransition(
                                          position: _offsetAnimation1,
                                          child: Container(
                                              height: 500,
                                              width: 500,
                                              color: const Color(0xffEFEFEF),
                                              child: Column(
                                                children: const [
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 30, left: 20),
                                                    text: 'Ayush Kumar Singh',
                                                    fontSize: 35,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 10, left: 20),
                                                    text: 'Flutter Developer',
                                                    fontSize: 25,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 25, left: 20),
                                                    text: 'Phone:',
                                                    fontSize: 20,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 15, left: 20),
                                                    text: '8707091632',
                                                    fontSize: 15,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 25, left: 20),
                                                    text: 'Email:',
                                                    fontSize: 20,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 15, left: 20),
                                                    text:
                                                        'ayushkumarsingh968@gmail.com',
                                                    fontSize: 15,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 25, left: 20),
                                                    text: 'Address:',
                                                    fontSize: 20,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 15, left: 20),
                                                    text: 'Noida',
                                                    fontSize: 15,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 25, left: 20),
                                                    text: 'Date Of Birth:',
                                                    fontSize: 20,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Header(
                                                    padding: EdgeInsets.only(
                                                        top: 15, left: 20),
                                                    text: '17/11/1999',
                                                    fontSize: 15,
                                                    color: Color(0xff182153),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Header(
                                        padding:
                                            EdgeInsets.only(top: 100, left: 15),
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
                                  child: SlideTransition(
                                    position: _offsetAnimation2,
                                    child: FadeTransition(
                                      opacity: _animation,
                                      child: Container(
                                        height: 75,
                                        width: 1000,
                                        color: const Color(0xff182153),
                                        child: const Material(
                                          color: Color(0xff182153),
                                          child: SocialMedia(
                                            color: Colors.white,
                                            alignment: MainAxisAlignment.center,
                                          ),
                                        ),
                                      ),
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
                        );
                      }
                      if (dimens.maxWidth < 500) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Photo(
                                      height: 1100,
                                      width: MediaQuery.of(context).size.width,
                                      color: null,
                                      image: Image.asset(
                                        "images/background.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 1100,
                                  width: MediaQuery.of(context).size.width,
                                  color:
                                      const Color(0xff182153).withOpacity(0.75),
                                ),
                                FadeTransition(
                                  opacity: _animation,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 100),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SlideTransition(
                                            position: _offsetAnimation,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Photo(
                                                  height: 500,
                                                  width: 500,
                                                  color:
                                                      const Color(0xffEFEFEF),
                                                  image: Image.asset(
                                                    "images/myImage.jpg",
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          ),
                                          SlideTransition(
                                            position: _offsetAnimation1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Container(
                                                  height: 500,
                                                  width: 500,
                                                  color:
                                                      const Color(0xffEFEFEF),
                                                  child: Column(
                                                    children: const [
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 30,
                                                                left: 20),
                                                        text:
                                                            'Ayush Kumar Singh',
                                                        fontSize: 30,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10,
                                                                left: 20),
                                                        text:
                                                            'Flutter Developer',
                                                        fontSize: 25,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Phone:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: '8707091632',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Email:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text:
                                                            'ayushkumarsingh968@gmail.com',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Address:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: 'Noida',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Date Of Birth:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: '17/11/1999',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Header(
                                        padding:
                                            EdgeInsets.only(top: 100, left: 15),
                                        text: "Hello! I'm Ayush",
                                        fontSize: 20,
                                        color: null,
                                        fontWeight: null,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: SizedBox(
                                          height: 230,
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
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: SlideTransition(
                                    position: _offsetAnimation2,
                                    child: FadeTransition(
                                      opacity: _animation,
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
                        );
                      } else {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Photo(
                                      height: 1100,
                                      width: MediaQuery.of(context).size.width,
                                      color: null,
                                      image: Image.asset(
                                        "images/background.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  height: 1100,
                                  width: MediaQuery.of(context).size.width,
                                  color:
                                      const Color(0xff182153).withOpacity(0.75),
                                ),
                                FadeTransition(
                                  opacity: _animation,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 115),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SlideTransition(
                                            position: _offsetAnimation,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Photo(
                                                  height: 500,
                                                  width: 500,
                                                  color:
                                                      const Color(0xffEFEFEF),
                                                  image: Image.asset(
                                                    "images/myImage.jpg",
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          ),
                                          SlideTransition(
                                            position: _offsetAnimation1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Container(
                                                  height: 500,
                                                  width: 500,
                                                  color:
                                                      const Color(0xffEFEFEF),
                                                  child: Column(
                                                    children: const [
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 30,
                                                                left: 20),
                                                        text:
                                                            'Ayush Kumar Singh',
                                                        fontSize: 35,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10,
                                                                left: 20),
                                                        text:
                                                            'Flutter Developer',
                                                        fontSize: 25,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Phone:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: '8707091632',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Email:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text:
                                                            'ayushkumarsingh968@gmail.com',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Address:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: 'Noida',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 25,
                                                                left: 20),
                                                        text: 'Date Of Birth:',
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      Header(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15,
                                                                left: 20),
                                                        text: '17/11/1999',
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xff182153),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Header(
                                        padding:
                                            EdgeInsets.only(top: 100, left: 15),
                                        text: "Hello! I'm Ayush",
                                        fontSize: 20,
                                        color: null,
                                        fontWeight: null,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: SizedBox(
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
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: SlideTransition(
                                    position: _offsetAnimation2,
                                    child: FadeTransition(
                                      opacity: _animation,
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
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: LayoutBuilder(builder: (context, dimens) {
          if (dimens.maxWidth > 1035) {
            return const SizedBox();
          } else if (maxWidth < 500) {
            return Drawer(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.animateTo(
                          1600,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                        Navigator.pop(context);
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
                      onTap: () {
                        _controller.animateTo(
                          2300,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                        Navigator.pop(context);
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
                      onTap: () {
                        _controller.animateTo(
                          3000,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                        Navigator.pop(context);
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
                      onTap: () {
                        _controller.animateTo(
                          3650,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                        Navigator.pop(context);
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
                      onTap: () {
                        _controller.animateTo(
                          4300,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                        Navigator.pop(context);
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
            );
          } else {
            return Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 250),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.animateTo(
                        1600,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                      Navigator.pop(context);
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
                    onTap: () {
                      _controller.animateTo(
                        2600,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                      Navigator.pop(context);
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
                    onTap: () {
                      _controller.animateTo(
                        3400,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                      Navigator.pop(context);
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
                    onTap: () {
                      _controller.animateTo(
                        4100,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                      Navigator.pop(context);
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
                    onTap: () {
                      _controller.animateTo(
                        4600,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                      Navigator.pop(context);
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
            );
          }
        }));
  }
}
