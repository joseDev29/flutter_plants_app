import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: const <Widget>[
            IconCardsListAndReturnBtn(),
            MainPlantImage()
          ],
        ),
      ),
    );
  }
}

class MainPlantImage extends StatelessWidget {
  const MainPlantImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(63), bottomLeft: Radius.circular(63)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29))
          ],
          image: const DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/img.png"))),
    );
  }
}

class IconCardsListAndReturnBtn extends StatelessWidget {
  const IconCardsListAndReturnBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          const Spacer(),
          const IconCard(asset: "assets/icons/sun.svg"),
          const IconCard(asset: "assets/icons/icon_2.svg"),
          const IconCard(asset: "assets/icons/icon_3.svg"),
          const IconCard(asset: "assets/icons/icon_4.svg")
        ],
      ),
    ));
  }
}
