import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/sign_up_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';
import 'package:pinput/pinput.dart';

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
                          Get.to(SignUpScreen());
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
                child: RichText(text: const TextSpan(children: [TextSpan(text: 'We have just sent you 4 digit code via your \n                email', style: TextStyle(color: Colors.black, fontSize: 15)), TextSpan(text: ' example@gmail.com', style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold, height: 2))]))),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.36,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35, left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
              child: SizedBox(
                child: Pinput(
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                    height: 60,
                    width: 60,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        // shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 1.5)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 350, 20, 25),
              child: Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                         
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                            child: Container(
                              
                              
                              height: MediaQuery.of(context).size.height * 0.75,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.4,
                                      // width: MediaQuery.of(context).size.width * 0.4,

                                      child: Image.asset(
                                        'assets/images/successfully.png',
                                        height: 200,
                                      ),
                                    ),
                                    
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(43, 0, 20, 10),
                                          child: Text(
                                            'You have logeed in \n      successfully',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                                          ),
                                        ),

                                        // Text('Lorem ipsum is simply dummy text of the \n printing and typesetting industry.'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                                          child: Text('Lorem ipsum is simply dummy text of the \n        printing and typesetting industry.'),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.height * 0.04,
                                      ),
                                      child: SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.08,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            "Continue",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            
                          );
                        });

                    //===================================================================================================

                    //              showDialog(
                    // context: context,
                    // builder: (ctx) => AlertDialog(
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                    //   // title: const Text("Alert Dialog Box"),
                    //   title: Icon(Icons.abc),
                    //   content: const Text("You have raised a Alert Dialog Box"),
                    //   actions: <Widget>[
                    //     ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))
                    //       ),

                    //       onPressed: () {
                    //         Navigator.of(ctx).pop();
                    //       },
                    //       child: Container(
                    //         height: 50,
                    //         width: double.infinity,
                    //         // // color: Colors.green,
                    //         // padding: const EdgeInsets.all(14),

                    //         child: Center(child: const Text("Continue")),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //              );
//==================================================================================================================================
                    // Get.to(PopupDialog());

                    //didn't work..
                    //  showDialog(  dynamic context, dynamic builder ) {
                    //           return Container(
                    //             child: Dialog.fullscreen(
                    //                child: Text('Hello otp is successfully..'),

                    //             ),
                    //           );
                    //    }
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color(0xf6f8fe),   E.X. =>  Hexa color code
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
                top: 430,
              ),
              child: Row(
                children: [
                  const Text(
                    'Don\'t receive code ?',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Resend Code'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
