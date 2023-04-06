import 'package:flutter/material.dart';

import 'skill.dart';

class SkillClass extends StatefulWidget {
  const SkillClass({Key? key}) : super(key: key);

  @override
  State<SkillClass> createState() => _SkillClassState();
}

class _SkillClassState extends State<SkillClass> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late final AnimationController _left = AnimationController(
    duration: const Duration(milliseconds: 2000),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.1, 0.0),
    end: const Offset(0.00, 0.0),
  ).animate(CurvedAnimation(
    parent: _left,
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
        upperBound: 1
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth > 1035){
          return MouseRegion(
            onEnter: (event){
              _controller.forward();
              _left.forward();
            },
            child: Column(
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
                    SlideTransition(
                      position: _offsetAnimation,
                      child: FadeTransition(
                        opacity: _animation,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Skill(text: "Flutter", size: 20,),
                                  Skill(text: "Dart", size: 20,),
                                  Skill(text: "Firebase Tools", size: 20,),
                                  Skill(text: "Bloc Architecture", size: 20,),
                                ],
                              ),
                              Row(
                                children: const [
                                  Skill(text: "Cubit Architecture", size: 20,),
                                  Skill(text: "GitLab", size: 20,),
                                  Skill(text: "GitHub", size: 20,),
                                  Skill(text: "UI", size: 20,),
                                ],
                              ),
                              Row(
                                children: const [
                                  Skill(text: "Android Studio", size: 20,),
                                  Skill(text: "Animation", size: 20,),
                                ],
                              ),
                            ],
                          ),
                        ),
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
          );
        }
        if (dimens.maxWidth<500){
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
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "images/skill-background.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff182153).withOpacity(0.75),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Skill(text: "Flutter", size: 15,),
                            Skill(text: "Dart", size: 15,),
                            Skill(text: "Firebase Tools", size: 15,),

                          ],
                        ),
                        Column(
                          children: const [
                            Skill(text: "GitLab", size: 15,),
                            Skill(text: "GitHub", size: 15,),
                            Skill(text: "UI", size: 15,),
                          ],
                        ),
                        Column(
                          children: const [
                            Skill(text: "Bloc Architecture", size: 13,),
                            Skill(text: "Cubit Architecture", size: 13,),
                            Skill(text: "Android Studio", size: 15,),
                            Skill(text: "Animation", size: 15,),
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
        else {
          return MouseRegion(
            onEnter: (event){
              _controller.forward();
              _left.forward();
            },
            child: Column(
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
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "images/skill-background.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xff182153).withOpacity(0.75),
                    ),
                    SlideTransition(
                      position: _offsetAnimation,
                      child: FadeTransition(
                        opacity: _animation,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  Skill(text: "Flutter", size: 15,),
                                  Skill(text: "Dart", size: 15,),
                                  Skill(text: "Firebase Tools", size: 15,),

                                ],
                              ),
                              Column(
                                children: const [
                                  Skill(text: "GitLab", size: 15,),
                                  Skill(text: "GitHub", size: 15,),
                                  Skill(text: "UI", size: 15,),
                                ],
                              ),
                              Column(
                                children: const [
                                  Skill(text: "Bloc Architecture", size: 15,),
                                  Skill(text: "Cubit Architecture", size: 15,),
                                  Skill(text: "Android Studio", size: 15,),
                                  Skill(text: "Animation", size: 15,),
                                ],
                              ),
                            ],
                          ),
                        ),
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
          );
        }
      },
    );
  }
}
