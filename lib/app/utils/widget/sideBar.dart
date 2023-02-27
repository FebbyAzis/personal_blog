import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_blog/app/routes/app_pages.dart';
import 'package:personal_blog/app/utils/style/global.colors.dart';
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
     return SizedBox(
        //membuat menu drawer
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Drawer(
            backgroundColor: GlobalColors.mainColor,          
            //membuat list, 
            //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
            child: ListView(
              padding: EdgeInsets.zero,
              //di dalam listview ini terdapat beberapa widget drawable
              children: [
                UserAccountsDrawerHeader(
                  //membuat gambar profil
                  currentAccountPicture: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/profil.jpg')
                    ),
                  ),
                  //membuat nama akun
                  accountName: Text("Febby Azis",
                  style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),), 
                  //membuat nama email
                  accountEmail: Text("UI & UX Designer",
                  style: TextStyle(
                    fontSize: 12
                  ),),
                  //memberikan background
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img3.png'), 
                      fit: BoxFit.cover
                    )
                  ),
                ), 
                Divider(color: Colors.grey,),
                //membuat list menu
                ListTile( leading: Icon(Icons.home, color: Colors.white,), 
                title: Text("Home",
                style: TextStyle(
                  color: Colors.white,
                ),), onTap: (){
                  Get.toNamed(Routes.HOME);
                },),
                ListTile( leading: Icon(Icons.phone_android, color: Colors.white,), 
                title: Text("Aplication Project",
                style: TextStyle(
                  color: Colors.white,
                )), onTap: (){
                  Get.toNamed(Routes.TASK);
                },), 
                ListTile( leading: Icon(Icons.task, color: Colors.white,), 
                title: Text("Task Project",
                style: TextStyle(
                  color: Colors.white,
                )), onTap: (){
                  Get.toNamed(Routes.ARTICLE);
                },), 
                ListTile( leading: Icon(Icons.image, color: Colors.white,), 
                title: Text("Gallery",
                style: TextStyle(
                  color: Colors.white,
                )), onTap: (){
                  Get.toNamed(Routes.PICTURES);
                },), 
                Divider(color: Colors.grey,),
                ListTile( leading: Icon(Icons.emoji_emotions, color: Colors.white,), 
                title: Text("Profile",
                style: TextStyle(
                  color: Colors.white,
                )), onTap: (){
                  Get.toNamed(Routes.PROFILE);
                },), 
                ListTile( leading: Icon(Icons.contact_page, color: Colors.white,), 
                title: Text("Contact Us",
                style: TextStyle(
                  color: Colors.white,
                )), onTap: (){Get.toNamed(Routes.CONTACTUS);},), 
              ],
            ),
          ),
        ),
      );
    }
  }


     