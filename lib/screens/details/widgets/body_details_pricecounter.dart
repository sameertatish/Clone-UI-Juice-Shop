// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class PriceCounter extends StatelessWidget {
  const PriceCounter({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10, right: 1),
            child: Text('\$'),
          ),
          Text(
            '${product.price}',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Counter(product: product),
        ],
      ),
    );
  }
}
