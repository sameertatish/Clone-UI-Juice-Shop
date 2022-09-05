// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import 'body_details_pricecounter.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.4),
      padding: EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Lemonada Juice",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
          ),
          PriceCounter(product: product),
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
            child: Text(
              'About product',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.black87, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            product.description,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
