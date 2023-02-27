import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/ImageFullScreenWrapperWidget.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';

import '../controllers/pictures_controller.dart';

class PicturesView extends GetView<PicturesController> {
  const PicturesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
               ListTile(
                    title: Text('My Pictures',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
              Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(padding: EdgeInsets.all(10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/gallery/img1.jpeg',
                  height: 150,),
                  dark: true,
                  )),

                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/gallery/img2.jpeg',
                  height: 150,),
                  dark: true,
                  )),

                  // Padding(padding: EdgeInsets.all(10),
                  // child: Image.asset('assets/images/gallery/img1.jpeg',
                  // height: 150,)),
                  // Padding(padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                  // child: Image.asset('assets/images/gallery/img2.jpeg',
                  // height: 150,)),
                ],
              ),

               Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(padding: EdgeInsets.only(right: 10,left: 10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/gallery/img3.jpeg',
                  height: 150,),
                  dark: true,
                  )),

                  Padding(padding: EdgeInsets.only(right: 10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/gallery/img4.jpeg',
                  height: 150,),
                  dark: true,
                  )),

                  // Padding(padding: EdgeInsets.all(10),
                  // child: Image.asset('assets/images/gallery/img1.jpeg',
                  // height: 150,)),
                  // Padding(padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                  // child: Image.asset('assets/images/gallery/img2.jpeg',
                  // height: 150,)),
                ],
              ),

               Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(padding: EdgeInsets.only(top: 10,right: 10,left: 10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/gallery/img5.jpg',
                  height: 150,),
                  dark: true,
                  )),

                  Padding(padding: EdgeInsets.only(top: 10,right: 10),
                  child: ImageFullScreenWrapperWidget(
                  child: Image.asset('assets/images/profil.jpg',
                  height: 150,),
                  dark: true,
                  )),

                  // Padding(padding: EdgeInsets.all(10),
                  // child: Image.asset('assets/images/gallery/img1.jpeg',
                  // height: 150,)),
                  // Padding(padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                  // child: Image.asset('assets/images/gallery/img2.jpeg',
                  // height: 150,)),
                ],
              )

            ],
          ),
        ),
      ),
      
      drawer:SideBar(),
      
    );
    
  }
}
