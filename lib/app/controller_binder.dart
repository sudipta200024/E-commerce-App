import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controllers.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavControllers());
  }
}
