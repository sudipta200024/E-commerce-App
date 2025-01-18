import 'package:ecommerce/app/urls.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  bool _inProgress= false;
  bool get inProgress => _inProgress;

  Future<void> verifyEmail(String email)async{
    _inProgress = true;
    update();
    final NetworkResponse response = await Get.find<NetworkCaller>().getRequest(Urls.verifyEmailUrl(email));
    
  }
}