import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedCard(
            image: "assets/images/image_1.png",
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPress: () {},
          ),
          RecomendedCard(
            image: "assets/images/image_2.png",
            title: 'Angelica',
            country: 'Endgland',
            price: 320,
            onPress: () {},
          ),
          RecomendedCard(
            image: "assets/images/image_3.png",
            title: 'Bertha',
            country: 'Normandia',
            price: 580,
            onPress: () {},
          )
        ],
      ),
    );
  }
}

class RecomendedCard extends StatelessWidget {
  final String image, title, country;
  final double price;
  final void Function() onPress;

  const RecomendedCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  Text(
                    '\$${price.toInt()}',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
