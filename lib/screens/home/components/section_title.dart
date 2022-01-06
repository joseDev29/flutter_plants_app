import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title, buttonText;
  final void Function() btnAction;

  const SectionTitle(
      {Key? key,
      required this.title,
      required this.buttonText,
      required this.btnAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleUnderline(
            text: title,
          ),
          const Spacer(),
          TextButton(
              onPressed: btnAction,
              child: Text(
                buttonText,
                style: const TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  primary: kBackgroundColor.withOpacity(0.2),
                  minimumSize: const Size(80, 32),
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )))
        ],
      ),
    );
  }
}

class TitleUnderline extends StatelessWidget {
  final String text;

  const TitleUnderline({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2)))
        ],
      ),
    );
  }
}
