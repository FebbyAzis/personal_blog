import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:personal_blog/app/modules/home/views/home_view.dart';
import 'package:personal_blog/app/routes/app_pages.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({ Key?key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return GetMaterialApp(
      home: HomeView(),
      getPages: AppPages.routes,
    );
  }
}