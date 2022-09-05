// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../details/details_screen.dart';
import 'card.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Header(),
        SizedBox(
          height: size.height * 0.70 - 24,
          child: ListView.builder(
            padding: EdgeInsets.only(bottom: kDefaultPadding),
            itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CardDetails(
                product: Product.products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: Product.products[index],
                      ),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
