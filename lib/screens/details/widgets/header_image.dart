// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../models/product.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      decoration: BoxDecoration(
          color: product.color,
          image: DecorationImage(
              image: AssetImage(product.image), fit: BoxFit.contain),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35))),
    );
  }
}
