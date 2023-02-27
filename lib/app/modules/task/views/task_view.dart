import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:linkify/linkify.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  TaskView({Key? key}) : super(key: key);

final Uri _url = Uri.parse('https://garage-auto-app-001.web.app/');
final Uri _url1 = Uri.parse('https://task-management-apps-59849.web.app/');
final Uri _urll = Uri.parse('https://github.com/FebbyAzis/garage_auto_apps.git');
final Uri _urll1 = Uri.parse('https://github.com/FebbyAzis/task_management_app.git');
final Uri _urlll = Uri.parse('https://www.figma.com/file/6aF179EViFqTwcCubUKCdL/UI-%26-UX-GARAGE-AUTO---Kelompok-1?node-id=1%3A66&t=Ifz0ETfFGwvUS8NW-0');


Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrl1() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Could not launch $_url1');
  }
}

Future<void> _launchUrll() async {
  if (!await launchUrl(_urll)) {
    throw Exception('Could not launch $_urll');
  }
}

Future<void> _launchUrll1() async {
  if (!await launchUrl(_urll1)) {
    throw Exception('Could not launch $_urll1');
  }
}


Future<void> _launchUrlll() async {
  if (!await launchUrl(_urlll)) {
    throw Exception('Could not launch $_urlll');
  }
}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplication Project'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
                    title: Text('Garage Auto App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
           ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                        'assets/images/GA.png',
                        width: 300,
                        height: 200,
                        fit:BoxFit.fill

                    ),
                  ),
          Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: _launchUrl, child: Text('View App Project', style: TextStyle(decoration: TextDecoration.underline, ),)),
                      TextButton(onPressed: _launchUrll, child: Text('View Source Code', style: TextStyle(decoration: TextDecoration.underline, ))),
                      TextButton(onPressed: _launchUrlll, child: Text('View Design UI', style: TextStyle(decoration: TextDecoration.underline, )))
                    ],
                  ),
                  
          SizedBox(height: 10,),

          Divider(color: Colors.grey,),

          ListTile(
                    title: Text('Task Managemen App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
           ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                        'assets/images/TM.png',
                        width: 300,
                        height: 200,
                        fit:BoxFit.fill

                    ),
                  ),
          Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: _launchUrl1, child: Text('View App Project', style: TextStyle(decoration: TextDecoration.underline, ),)),
                      TextButton(onPressed: _launchUrll1, child: Text('View Source Code', style: TextStyle(decoration: TextDecoration.underline, ))),
                      
                    ],
                  ),
                  
          SizedBox(height: 10,),        

          Divider(color: Colors.grey,),

          ],
        ),
        
        ),        
      ),
      drawer:SideBar(),
    );
  }
}
