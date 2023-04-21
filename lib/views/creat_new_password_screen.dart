import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/sign_in_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';
import './forgot_password_screen.dart';

class CreateNewPassword extends BaseRoute {

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
                CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {
                        // Get.to(WelcomeScreen());
                         Get.to(ForgotPasswordScreen());
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    )),
              
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17, left: MediaQuery.of(context).size.width * 0.28 , right: MediaQuery.of(context).size.width * 0.00  ),
            child: const Text(
              '       Create a \n New Password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27, left: MediaQuery.of(context).size.height * 0.16  , ),
            child: const Text(
              ' Enter your new password',
              style: TextStyle(fontSize: 15,),
            ),
          ),
            Container(
              
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.35 , ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('New Password'),
                  ],
                ),            
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 280, 20, 25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(icon: Icon(Icons.visibility_off_sharp , ) , onPressed: () {}),
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(30)),
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
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07, top: MediaQuery.of(context).size.height * 0.5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Confirm Password'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 390 , 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility_off_sharp),
                          onPressed: () {},
                        ),
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(30)),
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
              Padding(
            padding: const EdgeInsets.fromLTRB(20, 480, 20, 25),
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // page route 
                  // Get.to(OtpScreen());
                  Get.to(SignScreen());
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Color(0xf6f8fe),   E.X. =>  Hexa color code
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}