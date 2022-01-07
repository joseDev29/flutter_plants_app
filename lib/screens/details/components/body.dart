import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/plant_data.dart';
import 'package:plant_app/screens/details/components/details_buttons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          ImageAndIcons(),
          PlantData(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(height: kDefaultPadding),
          DetailsButtons()
        ],
      ),
    );
  }
}
