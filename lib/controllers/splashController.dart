import 'dart:async';
//packages
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/intro_screens.dart';


class SplashController extends GetxController {
  dynamic a;
  dynamic o;
  // getxcontroller instance
  // NetworkController networkController = Get.put(NetworkController());

  @override
  void onInit() async {
    _init();
    super.onInit();
  }
  

  @override
  void onClose() {
    super.onClose();
  }

   bool isloading = true;
  _init() {
    Timer(Duration(seconds: 4), () {
         Get.to(() => IntroS());
      // Get.off(
      //     () => CustomerListScreen(
      //           a: a,
      //           o: o,
      //         ),
      //     routeName: "CustomerListScreen");
      
    });
  }
}
