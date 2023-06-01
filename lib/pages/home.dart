import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodway_flutter/models/product_card.dart';
import 'package:foodway_flutter/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Icon Bottom Navbar
    // final items = <Widget>[
    //   SvgPicture.asset(
    //     'assets/icons/home.svg',
    //     color: dark1,
    //     width: 18,
    //   ),
    //   SvgPicture.asset(
    //     'assets/icons/search.svg',
    //     color: dark1,
    //     width: 18,
    //   ),
    //   SvgPicture.asset(
    //     'assets/icons/cart.svg',
    //     color: dark1,
    //     width: 18,
    //   ),
    //   SvgPicture.asset(
    //     'assets/icons/profile.svg',
    //     color: dark1,
    //     width: 18,
    //   ),
    // ];

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text('Foodway')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // Search
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: dark3,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xffD6E3ED))),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          color: dark2,
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cari makanan kesukaamu...',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: dark2,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container()
              ],
            ),
          ),

          // Banner
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Flexible(
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  color: dark2,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: dark2.withOpacity(0.4), // Warna bayangan
                      spreadRadius: 0, // Jarak bayangan
                      blurRadius: 20, // Tingkat blur
                      offset: Offset(4, 15), // Posisi bayangan (x, y)
                    ),
                  ],
                ),
                child: Image.asset('assets/images/home_banner2.png'),
              ),
            ),
          ),

          // Product Card
          Container(
            height: 70,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: 100,
                    child: Image.asset('assets/images/demo/filter_btn.png'),
                  ),
                );
              },
            ),
          ),

          // Product Card
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCard(
                  productName: 'Donat Variasi Rasa',
                  cutPrice: 'Rp. 2.000',
                  oriPrice: 'Rp. 10.000',
                );
              },
            ),
          ),

          // Banner
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: Image.asset(
                    'assets/images/demo/home_restaurant_title.png',
                    width: 350, // atur lebar gambar
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 50,
            ),
            child: Flexible(
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: dark2.withOpacity(0.1), // Warna bayangan
                      spreadRadius: 0, // Jarak bayangan
                      blurRadius: 20, // Tingkat blur
                      offset: Offset(4, 15), // Posisi bayangan (x, y)
                    ),
                  ],
                ),
                child: Image.asset('assets/images/demo/home_restaurant.png'),
              ),
            ),
          ),
        ],
      )),

      // Bottom Navigation Bar
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   color: dark3,
      //   items: items,
      // ),
    );
  }
}
