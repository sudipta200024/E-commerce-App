import 'dart:async';
import 'package:get/get.dart';

class GetXTimerController extends GetxController {
  final RxInt counter = 10.obs; // Reactive integer for the timer
  final RxBool enableResendCodeButton = false.obs;

  Timer? _timer;

  void startTimer() {
    counter.value = 10;
    enableResendCodeButton.value = false;

    // Cancel any existing timer before starting a new one
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter.value > 0) {
        counter.value--; // Decrement the counter
      } else {
        timer.cancel(); // Stop the timer when it reaches 0
        enableResendCodeButton.value = true;
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
