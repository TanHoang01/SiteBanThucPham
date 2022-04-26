import 'package:flutter/material.dart';
import 'package:SiteBanThucPham/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:SiteBanThucPham/screens/home/home_screen.dart';
import 'package:SiteBanThucPham/screens/profile/change_password_screen.dart';
import 'package:SiteBanThucPham/screens/profile/components/change_password_form.dart';
import 'package:SiteBanThucPham/screens/sign_in/sign_in_screen.dart';

import 'components/alert_dialog.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePassword createState() => _ChangePassword();
}

class _ChangePassword extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
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
      ),
      body: ChangePasswordForm(),
    );
  }
}