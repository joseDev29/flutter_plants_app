import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/components/header.dart';
import 'package:plant_app/screens/home/components/section_title.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          SectionTitle(
            title: 'Recomended',
            buttonText: 'More',
            btnAction: () {},
          ),
          const RecomendPlants(),
          SectionTitle(
              title: 'Featured Plants', buttonText: 'More', btnAction: () {})
        ],
      ),
    );
  }
}
