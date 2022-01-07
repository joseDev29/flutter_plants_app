import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.30),
        )
      ], color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: () {})
        ],
      ),
    );
  }
}
