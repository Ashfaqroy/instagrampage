import 'package:get/state_manager.dart';

class SignInController extends GetxController {
  var Count = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    increse();
    super.onInit();
  }

  void increse() {
    Count++;
  }

  void decrese() {
    Count--;
  }
}
