import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/constants.dart';
import 'package:SiteBanThucPham/screens/details/details_screen.dart';
import 'package:SiteBanThucPham/models/product.dart';
import 'components/product_card.dart';

class Favorite extends StatefulWidget {
  @override
  _Favorite createState() => _Favorite();
}

class _Favorite extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container( 
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
                bgColor: Colors.white,
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
      );
  }
}