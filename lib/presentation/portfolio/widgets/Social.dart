import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_widget.dart';

class SocialMedia extends StatelessWidget {
   const SocialMedia({Key? key, this.color, required this.alignment, }) : super(key: key);
final Color? color;
  // final Uri _url = Uri.parse('https://flutter.dev');
 final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        GestureDetector(
         onTap: _launchURLLinkdin,
          child: Photo(
              height: 24,
              width: 24,
              color: null,
              image: Image.asset(
                "images/linkedin.png",
                fit: BoxFit.fill,
                color: color,
              )),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: _launchURLFacebook,
          child: Photo(
              height: 24,
              width: 24,
              color: null,
              image: Image.asset("images/facebook.png",
                  fit: BoxFit.fill, color: color)),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: _launchURLTwitter,
          child: Photo(
              height: 24,
              width: 24,
              color: null,
              image: Image.asset("images/twitter.png",
                  fit: BoxFit.fill, color: color)),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: _launchURLInsta,
          child: Photo(
              height: 24,
              width: 24,
              color: null,
              image: Image.asset("images/instagram.png",
                  fit: BoxFit.fill, color: color)),
        ),
      ],
    );
  }
   _launchURLLinkdin() async {
     var url = Uri.parse("https://www.linkedin.com/in/ayush-kumar-singh-a9446a191/");
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     } else {
       throw 'Could not launch $url';
     }
   }   _launchURLFacebook() async {
     var url = Uri.parse("https://www.facebook.com/profile.php?id=100029440341019");
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     } else {
       throw 'Could not launch $url';
     }
   }   _launchURLTwitter() async {
     var url = Uri.parse("https://twitter.com/AyushKu14912193");
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     } else {
       throw 'Could not launch $url';
     }
   }   _launchURLInsta() async {
     var url = Uri.parse("https://www.instagram.com/aayush.kumar.singh/");
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     } else {
       throw 'Could not launch $url';
     }
   }

}
