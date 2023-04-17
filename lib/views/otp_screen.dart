import 'package:flutter/material.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';

class OtpScreen extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Row(
                children: [
                  // CircleAvatar(child: Icon(Icons.arrow_back_rounded , color: Colors.black,   ), maxRadius: 25 , backgroundColor: Colors.grey),
                  CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {
                          // Get.to(WelcomeScreen());
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17, left: MediaQuery.of(context).size.width * 0.37),
              child: const Text(
                'Enter OTP',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22, left: MediaQuery.of(context).size.width * 0.17),
                // child: const Text(
                //   'We have just sent you 4 digit code via your \n email example@gmail.com',
                //   style: TextStyle(fontSize: 13,),
                // ),
                child: RichText(text: const TextSpan(children: [TextSpan(text: 'We have just sent you 4 digit code via your \n                email', style: TextStyle(color: Colors.black, fontSize: 15)),
                 TextSpan(text: 'example@gmail.com', style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold , height: 2))]))
               

                ),
          ],    
        ),
      ),
    );
  }
}
