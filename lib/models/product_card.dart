import 'package:flutter/material.dart';
import 'package:foodway_flutter/theme.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String cutPrice;
  final String oriPrice;

  ProductCard({
    required this.productName,
    required this.cutPrice,
    required this.oriPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 20),
      child: Container(
        width: 180,
        // padding: EdgeInsets.all(20),
        // color: dark3,
        child: Image.asset('assets/images/demo/home_product.png'),
        // child: Column(
        //   children: [
        //     Row(
        //       children: [
        //         Container(
        //           height: 20,
        //         ),
        //       ],
        //     ),
        //     Text(productName),
        //     Text(cutPrice),
        //     Text(oriPrice),
        //   ],
        // ),
      ),
    );
  }
}
