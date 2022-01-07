import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
      ),
      body: const SafeArea(child: Body()),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
