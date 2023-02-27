import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_blog/app/routes/app_pages.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
import 'package:personal_blog/app/utils/widget/sideBar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: GlobalColors.mainColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('assets/images/profil.jpg',
                height: 200,
                ),
              ),
              SizedBox(height: 20,),
              Text('Febby Azis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),),
               Text('UI & UX Designer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),),
              TextButton(onPressed: () {
                Get.toNamed(Routes.PROFILE);
              }, child: Text('View profile')),
              Divider(),

              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Aplication Project',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),),

                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/GA.png'),
                                
                              ),
                            ),
                           
                          ),
                        ),
                        // 
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Container(
                            // margin: EdgeInsets.all(.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              
                              image: DecorationImage(
                                image: AssetImage('assets/images/TM.png'),
                                
                              ),
                            ),
                            
                          ),
                        ),

                       
                      ], options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ), 
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: () {
                                    Get.toNamed(Routes.TASK);
                                  }, child: Text('View Aplication Project',
                                  )),
                    ),
                  ],
                ),
              ),
              Divider(),

              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Task Project',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),),

                    CarouselSlider(
                      items: [
                          
                        //1st Image of Slider
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/RPL.jpg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/FG.JPG'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                      ], options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ), 
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: () {
                                    Get.toNamed(Routes.ARTICLE);
                                  }, child: Text('View Task Project',
                                  )),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gallery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),),

                    CarouselSlider(
                      items: [
                          
                        //1st Image of Slider
                       Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery/img1.jpeg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery/img2.jpeg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery/img3.jpeg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery/img4.jpeg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/gallery/img5.jpg'),
                                
                              ),
                            ),
                           
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            // margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/profil.jpg'),
                                
                              ),
                            ),
                           
                          ),
                        ),
                      ], options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ), 
                    ),
                     Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: () {
                                    Get.toNamed(Routes.PICTURES);
                                  }, child: Text('View Gallery',
                                  )),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer:SideBar(),
    );
  }
}


