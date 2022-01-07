import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      // color: Colors.black,
      child: Stack(
        children: <Widget>[HeaderTitle(size: size), const SearchBox()],
      ),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding + 36),
      height: size.height * 0.2 - 27,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36))),
      child: Row(
        children: <Widget>[
          Text(
            'Welcome!',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Image.asset('assets/images/logo.png')
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 54,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23))
              ]),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SvgPicture.asset('assets/icons/search.svg')
            ],
          ),
        ));
  }
}
