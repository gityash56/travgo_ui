import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:text_divider/text_divider.dart';
import 'package:travgo_ui/views/select_language.dart';
import 'package:travgo_ui/views/welcome_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';
import 'forgot_password_screen.dart';
import 'create_account_screen.dart';

class SignScreen extends BaseRoute {
  // const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
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
                        Get.to(WelcomeScreen());
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.15),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20, left: MediaQuery.of(context).size.height * 0.03),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Email Address'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 170, 20, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(22)),
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
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.36, left: MediaQuery.of(context).size.height * 0.03),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Password'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 290, 20, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility_off_sharp),
                        onPressed: () {},
                      ),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(22)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty == false) {
                        return 'Please enter a valid password.';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.50,
              left: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('Remember Me'),
                  leading: Radio(
                    value: false,
                    groupValue: context,
                    onChanged: (value) {},
                  ),
                  trailing: TextButton(
                    onPressed: () { 
                        Get.to(ForgotPasswordScreen());
                      },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 430, 20, 25),
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // page route
                     Get.to(SelectLanguage());
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Color(0xf6f8fe),   E.X. =>  Hexa color code
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 540, 20, 25),
            child: Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: SignInButton(
                    buttonType: ButtonType.google,
                    onPressed: () {
                      print('click');
                    })),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 610, 20, 25),
            child: Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: SignInButton(
                    buttonType: ButtonType.apple,
                    onPressed: () {
                      print('click');
                    })),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              top: 680,
            ),
            child: Row(
              children: [
                const Text(
                  'Don\'t have an account ?',
                ),
                TextButton(
                  onPressed: () {
                    Get.to(CreateAccountScreen());
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
