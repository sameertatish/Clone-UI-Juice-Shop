// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: kDefaultPadding * 1.5),
      child: Align(
          alignment: Alignment(1, 0.05),
          child: Container(
            width: 45,
            height: 45,
            child: Icon(
              Icons.favorite,
              color: product.color,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: product.color)
                ]),
          )),
    );
  }
}
