import 'package:get/get.dart';

import '../controllers/friends_controller.dart';

class FriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FriendsController>(
      () => FriendsController(),
    );
  }
}
