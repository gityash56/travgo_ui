import 'package:flutter/material.dart';
import 'package:travgo_ui/views/create_account_screen.dart';
import 'package:travgo_ui/views/welcome_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';
import 'package:get/get.dart';

class RegisterScreen extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            child: Image.asset(
              'assets/images/intro4.png',
              width: double.infinity, // full screen image
              fit: BoxFit.cover, // required if you need to full page imaeg
              height: 500, // reduce image size.
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 500, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * 0.07,
                      // ),
                      Text(
                        'We are here to make your \n          holiday easier',
                        style: TextStyle(
                          fontSize: 20,

                          fontWeight: FontWeight.bold,
                          // color: Theme.of(context).indicatorColor,      // use color theme blue for example.
                        ),
                      ),
                      // Divider(),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        // padding:EdgeInsets.only(left : 70 , right: 55 , ),
                        child: Text(
                          'Lorem ipsum is simply dummy text of the \n        printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Divider(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 1),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          // its work but we cant use.
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()  ),);
                          Get.to(WelcomeScreen()); // Use getx to page navigate.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Text('Get Started'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Text(
                          'Don\'t have an account ?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
