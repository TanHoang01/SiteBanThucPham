import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:SiteBanThucPham/screens/details/details_screen.dart';
import 'package:SiteBanThucPham/screens/cart/cart_screen.dart';
import 'package:SiteBanThucPham/models/product.dart';
import 'package:SiteBanThucPham/screens/home/home_screen.dart';

import 'components/product_card.dart';

class Xbox extends StatefulWidget {
  @override
  _Xbox createState() => _Xbox();
}

class _Xbox extends State<Xbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                        context,
                       MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(),
              ));
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Center(child: Text('Sea Food', textAlign: TextAlign.center, style: TextStyle(color: primaryColor),)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart,
                       color: iconColor,
                       size: 30.0,),
            onPressed: () {
              Navigator.push(
                        context,
                       MaterialPageRoute(
                          builder: (context) =>
                              CartScreen(),
              ));
            },
          ),
        ],
      ),
      body: Container( 
        decoration: BoxDecoration(color: bgColor),
        child: GridView.count(
      crossAxisCount: 2, children: 
        List.generate(
          demo_product.length,
            (index) => Padding(
              padding: const EdgeInsets.all( defaultPadding/2),
              child: ProductCard(
                title: demo_product[index].title,
                image: demo_product[index].images[0],
                price: demo_product[index].price,
                bgColor: bgColor,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          DetailsScreen(product: demo_product[index]),
                    ));
                  },
                ),
              ),
            ),
        )
      )
    );
  }
}