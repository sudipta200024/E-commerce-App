import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controllers.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';
import '../features/auth/ui/controllers/email_verification_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(NetworkCaller());
    Get.put(EmailVerificationController());
  }
}
