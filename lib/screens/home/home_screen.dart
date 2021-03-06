import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/constants.dart';
import 'package:SiteBanThucPham/screens/cart/cart_screen.dart';
import 'package:SiteBanThucPham/screens/cart/components/body.dart';
import 'package:SiteBanThucPham/screens/profile/profile_screen.dart';
import 'package:SiteBanThucPham/screens/favorite/favorite_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _index = 0;

  List<Widget> tabPages = [
    Home(),
    Favorite(),
    Profile()
  ]; 
  @override
  Widget build(BuildContext context) {

  Widget _bottomTab() {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (int index) => setState(() => _index = index),
      backgroundColor: barColor,
      selectedItemColor: primaryColor,
      unselectedItemColor: iconColor,
      items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: barColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
            backgroundColor: barColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: barColor
          ),
        ],
    );
  }
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: barColor,
        leading: IconButton(
          onPressed: null,
          icon: SvgPicture.asset("assets/icons/logo1.svg"),
        ),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                            color: iconColor),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear,
                        color: iconColor),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
              hintText: 'Search items...',
              border: InputBorder.none),
          ),
        ),
        ),
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
      body: tabPages[_index],
      bottomNavigationBar: _bottomTab()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Categories(),
            const PopularProducts(),
            const NewArrivalProducts(),   
          ],
        ),
      );
  }
}