import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8F9FB),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Flexible(
              fit: FlexFit.tight,
              child: Image.asset('assets/images/demo/cart.png'),
            ),
          ),
        ],
      )),
    );
  }
}
