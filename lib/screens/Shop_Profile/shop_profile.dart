import 'package:flutter/material.dart';
import 'package:vendor/components/custom_bottom_nav_bar.dart';
import 'package:vendor/screens/Shop_Profile/components/body.dart';
import 'package:vendor/screens/enums.dart';
import 'package:vendor/screens/home/home.dart';
import 'package:vendor/size_config.dart';

class ShopProfile extends StatelessWidget {
  static String routeName = '/ShopProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
        elevation: 0,
        title: Text(
          'Shop Profile',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
