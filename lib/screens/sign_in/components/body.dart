import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/components/no_account_text.dart';
import 'package:SiteBanThucPham/components/socal_cart.dart';
import 'package:SiteBanThucPham/constants.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Center(
                  child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: ExactAssetImage('assets/images/plant.png')
                            )                   
                          ),
                        )
                      ],
                    )
                  ),
                SizedBox(height: 10),
                SignForm(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/google.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}