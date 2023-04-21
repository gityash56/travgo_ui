import 'package:flutter/material.dart';
import 'package:travgo_ui/views/sign_in_screen.dart';
import '/widgets/baseRoute.dart';
import 'package:sign_button/sign_button.dart';
import 'package:text_divider/text_divider.dart';
import 'package:get/get.dart';
import 'sign_in_screen.dart';

class WelcomeScreen extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
            height: 350,
            width: double.infinity,
            color: Colors.blue,

            // foregroundDecoration: BoxDecoration(color: Colors.white , borderRadius: BorderRadius.circular(50)),

            child: const Padding(
              padding: EdgeInsets.only(top: 120, left: 80),
              child: Text(
                'Hi, Welcome Back!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(105, 170, 80, 2),
            child: Row(
              children: const [
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            // curve shape welcome page
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.38,
            ),
            height: 900,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
              color: Colors.white,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Email'),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 352, 20, 25),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(22)),
                    ),
                    validator: (value) {
                      if (value!.contains('@gmail.com') == false) {
                        return 'Please enter a valid Email Address.';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 430, 20, 25),
              child: Container(
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    // page route
                    Get.to(SignScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color(0xf6f8fe),   E.X. =>  Hexa color code
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text('Continue with Email'),
                ),
              ),
            ),
          ),

          //......... or continue with...........   left.

          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 310, 50, 0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextDivider.horizontal(
                    text: const Text(
                      'Or continue with',
                    ),
                    thickness: 2,
                    color: Colors.black26),
              ]),
            ),
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 540, 20, 25),
              child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: SignInButton(
                      buttonType: ButtonType.google,
                      onPressed: () {
                        print('click');
                      })),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 610, 20, 25),
              child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: SignInButton(
                      buttonType: ButtonType.apple,
                      onPressed: () {
                        print('click');
                      })),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              top: 680,
            ),
            child: Row(
              children: [
                Text(
                  'Don\'t have an account ?',
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign Up'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
