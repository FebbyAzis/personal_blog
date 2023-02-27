import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  const ContactusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: Container(
        alignment: Alignment.center,
       child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: SocialWidget(
              placeholderText: 'Jissbaee', //text visible to viewers
              iconData: SocialIconsFlutter.facebook,  //use the respective social logo
              iconColor: Colors.blue, //(optional, default - grey)
              link: 'https://mail.google.com/', //provide the link
              placeholderStyle:
              TextStyle(color: Colors.blueAccent, fontSize: 20, decoration: TextDecoration.underline), //placeholder text style
                  ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20),
            child: SocialWidget(
              placeholderText: 'jissbaee', //text visible to viewers
              iconData: SocialIconsFlutter.instagram,  //use the respective social logo
              iconColor: Colors.pink, //(optional, default - grey)
              link: 'https://mail.google.com/', //provide the link
              placeholderStyle:
              TextStyle(color: Colors.blueAccent, fontSize: 20, decoration: TextDecoration.underline ), //placeholder text style
                  ),
          ),
        ],
       )
      ),
      drawer: SideBar(),
    );
  }
}
