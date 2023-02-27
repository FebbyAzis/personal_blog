import 'package:get/get.dart';

import '../modules/article/bindings/article_binding.dart';
import '../modules/article/views/article_view.dart';
import '../modules/contactus/bindings/contactus_binding.dart';
import '../modules/contactus/views/contactus_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pictures/bindings/pictures_binding.dart';
import '../modules/pictures/views/pictures_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/task/bindings/task_binding.dart';
import '../modules/task/views/task_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TASK,
      page: () => TaskView(),
      binding: TaskBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => ArticleView(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.PICTURES,
      page: () => const PicturesView(),
      binding: PicturesBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTUS,
      page: () => const ContactusView(),
      binding: ContactusBinding(),
    ),
  ];
}
