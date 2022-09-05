import 'package:flutter/material.dart';

import '../../../models/product.dart';
import 'bag_button.dart';
import 'body_details.dart';
import 'header_icon.dart';
import 'header_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height - 200,
          child: Stack(
            children: [
              HeaderImage(product: product),
              IconHeader(product: product),
              Details(product: product)
            ],
          ),
        ),
        BagButton(product: product)
      ],
    );
  }
}
