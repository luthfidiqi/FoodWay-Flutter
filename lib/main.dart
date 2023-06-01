// import 'package:flutter/material.dart';
// import 'package:foodway_flutter/pages/home.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Foodway',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodway_flutter/pages/home.dart';
import 'package:foodway_flutter/pages/catalog.dart';
import 'package:foodway_flutter/pages/cart.dart';
import 'package:foodway_flutter/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodway_flutter/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(100, 0, 0, 0),
        systemNavigationBarColor: Color.fromARGB(0, 255, 255, 255)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTabBar(),
    );
  }
}

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  final screens = [
    HomePage(),
    Catalog(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset(
              //   'assets/icons/profile.svg',
              // ),
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ));
  }
}
