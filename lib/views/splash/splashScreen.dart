import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/splashController.dart';
import '../../widgets/baseRoute.dart';


class SplashScreen extends BaseRoute {
    //a - analytics
  //o - observer
  SplashScreen({a, o}) : super(a: a, o: o, r: 'SplashScreen2');

  final SplashController customerController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body: Center(
      
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(

            
            // color:Colors.blue ,
         
            height: 500,
            width: 500,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/travgo.png') ,), ),
          ),
         Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: BorderSide.strokeAlignOutside ,
                // valueColor: AlwaysStoppedAnimation(Colors.green),
                
              ),
              ],

        )
          
        ],
      ),
    )
   
    );
  }
}