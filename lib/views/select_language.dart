import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travgo_ui/views/home_screen.dart';

import 'package:travgo_ui/widgets/baseRoute.dart';


class SelectLanguage extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   margin: EdgeInsets.only(
          //     top: MediaQuery.of(context).size.height * 0.06,
          //     left: MediaQuery.of(context).size.height * 0.03,
          //   ),
          // child: Row(
          //   children: [
          //     CircleAvatar(
          //         maxRadius: 25,
          //         backgroundColor: Colors.grey[200],
          //         child: IconButton(
          //           onPressed: () {
          //             // Get.to(WelcomeScreen());
          //              Get.to(ForgotPasswordScreen());
          //           },
          //           icon: const Icon(Icons.arrow_back),
          //           color: Colors.black,
          //         )),

          //   ],
          // ),
          // ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14, left: MediaQuery.of(context).size.width * 0.21, right: MediaQuery.of(context).size.width * 0.00),
            child: const Text(
              'Select your Language',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.20,
              left: MediaQuery.of(context).size.height * 0.11,
              right: MediaQuery.of(context).size.height * 0.1,
            ),
            child: const Text(
              'Lorem ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            // child: Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 0, 50, 50),
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).size.height * 0.30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Language'),
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
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                        onPressed: () {
                          //=======================================================

                          showDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 1,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            // height: MediaQuery.of(context).size.height * 0.12,
                                            // width: MediaQuery.of(context).size.width * 0.4,

                                            CircleAvatar(
                                              maxRadius: 25,
                                              backgroundColor: Colors.grey[200],
                                              child: IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: const Icon(Icons.clear),
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.02),
                                              child: const Text(
                                                ' Select a Language',
                                                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Container(
                                        //   padding: EdgeInsets.all(15),
                                        //   color: Colors.amber,
                                        //   height: MediaQuery.of(context).size.width * 0.2,

                                        //   // width: 10,
                                        //   child: Row(
                                        //     children: [
                                        //       // ListTile(leading: Radio(groupValue: context  , onChanged: (value) => {}, value: context),

                                        //       // ),
                                        //       Card(
                                        //         shape: RoundedRectangleBorder(
                                        //           borderRadius: BorderRadius.circular(30),
                                        //         ),
                                                
                                        //         color: Colors.grey[200],
                                        //         child: Text(
                                        //           'English (UK)',
                                        //           style: TextStyle(
                                        //             fontSize: 25,
                                        //           ),
                                        //         ),

                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),


                                        // Elevatet button code...
                                           Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.04,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {  Navigator.of(context).pop();   },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'English (UK)',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ), 
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.02,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {  Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'English',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ), 
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.023,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {  Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'Bahasa indonesia',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ), 
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.025,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {  Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'Chaineses',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ),
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.027,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () { Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'Coration',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ),  
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.029,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {   Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'Coratian',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ), 
                                         Padding( 
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.031,
                                          ),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {  Navigator.of(context).pop();  },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  side: BorderSide(color: Colors.blue, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                'Czech',
                                                style: TextStyle(fontSize: 17, color: Colors.black),
                                              ),
                                              
                                            ),
                                          ),
                                        ), 







                        // left some lenguage....


                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                          //=======================================
                        },
                      ),
                      hintText: 'English (UK)',
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white60), borderRadius: BorderRadius.circular(30)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Choose Language.';
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
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // page route
                      Get.to(HomeScreen());
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
