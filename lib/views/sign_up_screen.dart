import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/otp_screen.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';

class SignUpScreen extends BaseRoute {
  // const SignUpScreen({super.key});

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
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.14),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17, left: MediaQuery.of(context).size.width * 0.20),
              child: const Text(
                'Complete your account',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22, left: MediaQuery.of(context).size.width * 0.33),
              child: const Text(
                'Lorem ipsum dolor sit amet',
                style: TextStyle(fontSize: 13,),
              ),
            ),
             Container(
              
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.26 , ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('First Name'),
                  ],
                ),
            
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 210, 20, 25),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Enter your First Name',
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
              
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.4 , ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Last Name'),
                  ],
                ),
            
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 310, 20, 25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Enter your last name',
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
              
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.53, ),
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
                    padding: const EdgeInsets.fromLTRB(20, 405, 20, 25),
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
             Container(
              
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07 , top: MediaQuery.of(context).size.height * 0.66 , ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Password'),
                  ],
                ),
            
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 500, 20, 25),
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
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07, top: MediaQuery.of(context).size.height * 0.79),
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
                    padding: const EdgeInsets.fromLTRB(20, 593, 20, 0),
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
            padding: const EdgeInsets.fromLTRB(20, 680, 20, 25),
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // page route 
                  Get.to(OtpScreen());
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Color(0xf6f8fe),   E.X. =>  Hexa color code
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Sign Up',
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
                  onPressed: () {   Get.to(SignUpScreen());},
                  child: Text('Login'),
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
