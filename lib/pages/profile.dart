import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8F9FB),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Flexible(
              fit: FlexFit.tight,
              child: Image.asset('assets/images/demo/profile.png'),
            ),
          ),
        ],
      )),
    );
  }
}
