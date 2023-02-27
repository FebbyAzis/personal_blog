import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> {
  ArticleView({Key? key}) : super(key: key);

final Uri _url = Uri.parse('https://drive.google.com/drive/folders/10nmCdGyZJngg7hEohDT5-Mk-i50YVmNQ');
final Uri _url1 = Uri.parse('https://drive.google.com/drive/folders/1WjCfvsuobKHAoVL8K-nKRdlq4LIAwJsk');
final Uri _urll = Uri.parse('https://miro.com/app/board/uXjVPru2YjA=/');
final Uri _urll1 = Uri.parse('https://docs.google.com/document/d/1Gh4wK1MuJCSf5Sg6gCe3n7Q5yRdRfFe4/edit');
final Uri _urlll = Uri.parse('https://www.figma.com/file/WXXTfC8G7z8YsWLcr7fM0N/Design-UI-UX-TICK-CONCERT?node-id=0%3A1&t=uRmCleT7akYiNfqM-1');


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
        title: const Text('Task Project'),
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
                    title: Text('Software Engineering Task Project',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
           
           Padding(padding: EdgeInsets.all(20),
           child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                        'assets/images/RPL.jpg',
                        width: 300,
                        height: 200,
                        fit:BoxFit.fill

                    ),
                  ),
          ),
          Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: _launchUrl, child: Text('View File Task', style: TextStyle(decoration: TextDecoration.underline, ),)),
                      TextButton(onPressed: _launchUrll, child: Text('View Board Task', style: TextStyle(decoration: TextDecoration.underline, ))),
                      TextButton(onPressed: _launchUrlll, child: Text('View Design UI Task', style: TextStyle(decoration: TextDecoration.underline, )))
                    ],
                  ),
                  
          SizedBox(height: 10,),

          Divider(color: Colors.grey,),

          ListTile(
                    title: Text('Photography Task Project',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
           
           Padding(padding: EdgeInsets.all(20),
           child: ClipRRect(
                  
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                        'assets/images/FG.JPG',
                        width: 300,
                        height: 200,
                        fit:BoxFit.fill

                    ),
                  ),
           ),
          Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: _launchUrl1, child: Text('View File Task', style: TextStyle(decoration: TextDecoration.underline, ),)),
                      TextButton(onPressed: _launchUrll1, child: Text('View Article Task', style: TextStyle(decoration: TextDecoration.underline, ))),
                      
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
