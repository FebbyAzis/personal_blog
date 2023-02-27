import 'package:get/get.dart';

import '../controllers/pictures_controller.dart';

class PicturesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PicturesController>(
      () => PicturesController(),
    );
  }
}
