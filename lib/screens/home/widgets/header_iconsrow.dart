// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconCategories(
          icon: 'assets/icons/apple-svgrepo-com.svg',
          text: 'Apple',
        ),
        IconCategories(
          icon: 'assets/icons/banana-svgrepo-com.svg',
          text: 'Banana',
        ),
        IconCategories(
          icon: 'assets/icons/grapes-svgrepo-com.svg',
          text: 'Grape',
        ),
        IconCategories(
          icon: 'assets/icons/mango-svgrepo-com.svg',
          text: 'Mango',
        ),
        IconCategories(
          icon: 'assets/icons/pineapple-svgrepo-com.svg',
          text: 'Pineapple',
        ),
      ],
    );
  }
}

class IconCategories extends StatelessWidget {
  const IconCategories({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String icon, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            width: 55,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SvgPicture.asset(icon),
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding / 2),
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
