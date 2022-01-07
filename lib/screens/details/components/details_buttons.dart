import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';

class DetailsButtons extends StatelessWidget {
  const DetailsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(children: <Widget>[
      SizedBox(
        width: size.width / 2,
        height: 84,
        child: TextButton(
            child: const Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: TextButton.styleFrom(
                primary: kBackgroundColor.withOpacity(0.2),
                backgroundColor: kPrimaryColor,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)))),
            onPressed: () {}),
      ),
      Expanded(
          child: SizedBox(
              height: 84,
              child: TextButton(
                child: const Text("Description"),
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)))),
              )))
    ]);
  }
}
