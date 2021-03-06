import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/components/socal_cart.dart';
import 'package:SiteBanThucPham/components/have_account_text.dart';
import 'package:SiteBanThucPham/constants.dart';

import 'sign_up_form.dart';

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
                Text("Register Account", style: headingStyle),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                SignUpForm(),
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
                HaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}