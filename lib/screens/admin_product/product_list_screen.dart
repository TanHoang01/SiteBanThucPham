import 'package:SiteBanThucPham/screens/admin_product/page/page.dart';
import 'package:SiteBanThucPham/screens/admin_product/widget/tabbar_widget.dart';
import 'package:SiteBanThucPham/screens/admin_home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:SiteBanThucPham/constants.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreen createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {
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
            title: Center(child: Text('Product List', textAlign: TextAlign.center, style: TextStyle(color: primaryColor),)),
            actions: [
                IconButton(
                  icon: Icon(Icons.remove,
                            color: iconColor,
                            size: 25.0,),
                    onPressed: () {
                      Navigator.push(
                                context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreen(),
                      ));
                    },
                  ),
                  IconButton(
                icon: Icon(Icons.add,
                          color: iconColor,
                          size: 25.0,),
                onPressed: () {
                  Navigator.push(
                            context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeScreen(),
                  ));
                },
              ),
            ],
          ),    
        body: EditablePage(),
    );
  }
}