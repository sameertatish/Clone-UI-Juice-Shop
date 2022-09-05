import 'package:flutter/material.dart';

import 'models/product.dart';

Color kPrimaryColor = const Color(0xFFf15d6a);
const double kDefaultPadding = 20.0;

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(right: kDefaultPadding),
      decoration: BoxDecoration(
          color: product.color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconSize: 20,
            color: Colors.white,
          ),
          const Text(
            '00',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
            iconSize: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
