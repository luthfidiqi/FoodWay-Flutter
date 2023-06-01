import 'package:flutter/material.dart';
import 'package:foodway_flutter/theme.dart';

class Catalog extends StatefulWidget {
  Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _Catalog();
}

class _Catalog extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8F9FB),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Flexible(
              fit: FlexFit.tight,
              child: Image.asset('assets/images/demo/catalog.png'),
            ),
          ),
        ],
      )),
    );
  }
}
