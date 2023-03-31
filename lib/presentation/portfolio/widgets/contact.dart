import 'package:flutter/material.dart';

import 'Social.dart';
import 'contact_Field.dart';
import 'header_widget.dart';

TextEditingController firstnameController = TextEditingController();
TextEditingController lastnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController messageController = TextEditingController();

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> with TickerProviderStateMixin {
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
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
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
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 6, top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ContactField(
                            title: "First Name",
                            height: 50,
                            width: MediaQuery.of(context).size.width / 8,
                            controller: firstnameController,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 50,
                          ),
                          ContactField(
                            title: "Last Name",
                            height: 50,
                            width: MediaQuery.of(context).size.width / 8,
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
                          width: MediaQuery.of(context).size.width / 3.75,
                          controller: emailController),
                      const SizedBox(
                        height: 20,
                      ),
                      ContactField(
                          title: "Type your message here...",
                          height: 150,
                          width: MediaQuery.of(context).size.width / 3.75,
                          controller: messageController),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 3.75,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff182153),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                const VerticalDivider(
                  thickness: 2,
                  color: Colors.white,
                ),
                Flexible(
                  child: IntrinsicHeight(
                    child: FadeTransition(
                      opacity: _animation,
                      child: MouseRegion(
                        onEnter: (event){
                          _controller.forward();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 0),
                                    text: "Ayush Kumar Singh",
                                    fontSize: 30,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 10),
                                    text: "Flutter Developer",
                                    fontSize: 15,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 30),
                                    text: "Phone",
                                    fontSize: 20,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 10),
                                    text: "8707091632",
                                    fontSize: 15,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 30),
                                    text: "Email",
                                    fontSize: 20,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                                Header(
                                    padding: EdgeInsets.only(left: 80, top: 10),
                                    text: "ayushkumarsingh968@gmail.com",
                                    fontSize: 15,
                                    color: Color(0xff182153),
                                    fontWeight: null),
                              ],
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                              endIndent: MediaQuery.of(context).size.width / 5,
                              indent: 80,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 80, top: 20),
                              child: SocialMedia(
                                alignment: MainAxisAlignment.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
