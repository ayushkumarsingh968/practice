import 'package:flutter/material.dart';

import 'Social.dart';
import 'contact_Field.dart';
import 'header_widget.dart';

TextEditingController firstnameController = TextEditingController();
TextEditingController lastnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController messageController = TextEditingController();

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
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
                  padding: const EdgeInsets.only(left: 340, top: 50),
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
                          padding: EdgeInsets.only(left: 80, top: 20),
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
    );
  }
}
