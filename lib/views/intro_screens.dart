import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
// import 'package:tinycolor/tinycolor.dart';
import 'register_screen.dart';


class IntroS extends StatefulWidget {
  @override
  IntroSState createState() {
    return IntroSState();
  }
}

class IntroSState extends State<IntroS> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        ),
      ),
     
      onSkip: () => print('Skipping the intro slides'),
      //  footerBgColor: Color.fromARGB(255, 232, 229, 218),

      footerBgColor: Colors.white,  //  footer page color 

      activeDotColor: Colors.blue,   // scrool dot color
      footerRadius: 18.0,
      indicatorType: IndicatorType.CIRCLE,   // footer indicator
      
      slides: [
        IntroScreen(
          headerPadding: const EdgeInsets.fromLTRB(0, 0, 0, 20),

          title: "Best travel destinations \n in the world",

          // imageAsset: 'assets/images/intro1.png',
          header: ClipRRect( borderRadius: const BorderRadius.only(bottomLeft: Radius.elliptical(260 , 40) , bottomRight: Radius.elliptical(260, 40)),
            child: Image.asset(
              'assets/images/intro1.png' , width: double.infinity,
              fit: BoxFit.cover, 
            ),
          ),
          description: 'Semper in cursus magna et eu varius nunc adipiscing.Elementum justo , laoreet id semiru forgive you.', 
          // textStyle: TextStyle(color: Colors.black,fontSize: 10),             // error in the code.
          // headerBgColor: Colors.black,
        ),
        IntroScreen(
          title: 'Meet the needs of holidays',
          headerBgColor: Colors.white,
          // imageAsset: 'assets/images/intro2.png',
          header: Image.asset(
            'assets/images/intro21.png' , width: double.infinity,
            fit: BoxFit.cover,
          ),
          description: "Semper in cursus magna et eu varius nunc adipiscing.Elementum justo , laoreet id semiru forgive you.", 
        ),
        IntroScreen(
          title: 'Go on holiday with a smile',
          headerBgColor: Colors.white,

          // imageAsset: 'assets/images/intro3.png',
          header: Image.asset(
            'assets/images/intro3.png', width: double.infinity,
            fit: BoxFit.cover,
          ),
          description: "Semper in cursus magna et eu varius nunc adipiscing.Elementum justo , laoreet id semiru forgive you.",
        ),
      ],
    );

    return Scaffold(
      body: screens,
   
    );
  }
}
