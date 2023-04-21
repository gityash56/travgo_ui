// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travgo_ui/widgets/baseRoute.dart';
// import 'package:nice_intro/intro_screen.dart';
// import 'package:nice_intro/intro_screens.dart';
// import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class HomeScreen extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_mosaic_rounded),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
      ),
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 40, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: const CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage('assets/images/intro3.png'),
                    ),
                    title: const Text(
                      'Hi, Andy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
                          child: Text('Netherlands'),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04),
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notification_add_outlined),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.messenger),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*  Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: AssetImage('assets/images/intro3.png'), // better option to set background image.
                        // child: Image.asset(
                        // 'assets/images/intro3.png' ,
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02,
                        ),
                        child: const Text(
                          'Hi, Andy',
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ), */
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.height * 0.04),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.all(14.0),
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.black54),
                          // disabledBorder: InputBorder.none,
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () => {},
                          ),
                          //  suffix: VerticalDivider(width: 20, thickness: 1,  indent: 2 , endIndent:10, color: Colors.amber,),
                          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_alt))),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.local_airport),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                            child: Text('Airport'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.car_rental),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                            child: Text('Rental'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.hotel),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                            child: Text('Hotel'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.auto_awesome_mosaic_rounded),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                            child: Text('More'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.75, left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'Frequently visited',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 310, left: 160),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                          3,
                          (index) => SizedBox(
                                child: Icon(
                                  Icons.circle,
                                  size: 12.0,
                                ),
                              ))),
                ),
              ],
            ),
            // Main image 1 with details..........
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                  child: Container(
                    // nedded because color.. if we want to check container hieght or width..
                    height: MediaQuery.of(context).size.height * 0.48,

                    width: MediaQuery.of(context).size.width * 0.45,
                    // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    // color: Colors.amber,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/intro1.png',
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 135),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 20,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                                  child: Text(
                                    'Tahiti Beach',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                Icon(Icons.location_on , size: 15),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Polynesia , French',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text(
                                    '\$235',
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 58),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text.rich(
                                    TextSpan(
                                      text: '4.4',
                                      style: TextStyle(color: Colors.amber),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: ' (32)',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Out side Left icon show
                //  main image 2..................................
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                  child: Container(
                    // nedded because color.. if we want to check container hieght or width..
                    height: MediaQuery.of(context).size.height * 0.48,

                    width: MediaQuery.of(context).size.width * 0.45,
                    // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    // color: Colors.amber,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/intro1.png',
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 135),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 20,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.grey[200],
                                    shadows: [
                                      Shadow(
                                        blurRadius: 4,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                                  child: Text(
                                    'St. Lucia Mountain',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                Icon(Icons.location_on , size: 15),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'South America',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text(
                                    '\$182',
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 58),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text.rich(
                                    TextSpan(
                                      text: '4.4',
                                      style: TextStyle(color: Colors.amber),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: ' (41)',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // over Main image detail screen...
            Padding(
              padding: EdgeInsets.only(top: 730, left: 20),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Tour Guide',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 800,
                  ),
                  child: Container(
                    height: 200,
                    width: 140, //  to heigh
                    padding: EdgeInsets.only(right: 0),
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/intro1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 155, left: 19),
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 8),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '4.0',
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // tour guide pic1 on side.....
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 120),
                            //   child: Container(height: 100, width: 100, color:  Colors.deepPurpleAccent, padding: EdgeInsets.only(left: 120),),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 800,
                  ),
                  child: Container(
                    height: 200,
                    width: 140, //  to heigh
                    padding: EdgeInsets.only(right: 0),
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/intro1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 155, left: 19),
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 8),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '4.0',
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // tour guide pic2 on side.....
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // 2nd pick star

            Padding(
              padding: const EdgeInsets.only(top: 825, left: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Emailia Ricardo',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), // apply chainges
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12 , right: 32),
                    child: Text(
                      '\$25 (1 Day)',
                      style: TextStyle(
                        fontSize: 14,
                      ), // apply chainges
                    ),

                  ),
                   Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20 , ),
                          child: Icon(Icons.location_on ,  size: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top : 20),
                          child: Text('  Polynesai , French' , style: TextStyle(fontSize: 10),),
                        ),
                      ],
                    ),
                  
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 15 , right:0 ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Icon(Icons.location_on),
                  //       Text('Polynesai , French' , style: TextStyle(fontSize: 10),),
                  //     ],
                  //   ),


                  // ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
