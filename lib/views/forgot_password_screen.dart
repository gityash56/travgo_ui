import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/creat_new_password_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';

class ForgotPasswordScreen extends BaseRoute {

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
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    )),
              
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17, left: MediaQuery.of(context).size.width * 0.26),
            child: const Text(
              'Forgot Password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23, left: MediaQuery.of(context).size.height * 0.14, ),
            child: const Text(
              'Recover your account password',
              style: TextStyle(fontSize: 15,),
            ),
          ),
           Container(
            
            // child: Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.30, ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('E-mail'),
                ],
              ),
          
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 240, 20, 25),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
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
      
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 340, 20, 25),
          child: Container(
            height: 70,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // page route 
                Get.to(CreateNewPassword());
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
          Padding(
          padding: const EdgeInsets.only(
            left: 100,
            top: 750,
          ),
          child: Row(
            children: [
              const Text(
                'Already have an account  ?',
              ),
              TextButton(
                onPressed: () { },
                child: Text('Login'),
              ),
            ],
          ),
        ),
        ],
      ),

    );
  }
}