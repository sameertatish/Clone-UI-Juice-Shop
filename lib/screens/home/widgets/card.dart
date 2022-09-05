// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class CardDetails extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const CardDetails({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(
          left: kDefaultPadding * 2,
          top: kDefaultPadding,
          right: kDefaultPadding / 4,
        ),
        child: Row(
          children: [
            TitleDescriptionPrice(product: product),
            ImageCard(product: product)
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(product.image))),
    );
  }
}

class TitleDescriptionPrice extends StatelessWidget {
  const TitleDescriptionPrice({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
          child: Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 250,
          padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
          child: Text(
            product.description,
            style:
                Theme.of(context).textTheme.headline5?.copyWith(fontSize: 15),
          ),
        ),
        PriceButtonBuy(product: product)
      ],
    );
  }
}

class PriceButtonBuy extends StatelessWidget {
  const PriceButtonBuy({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5, right: 1),
          child: Text('\$'),
        ),
        Text(
          '${product.price}',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding * 2),
          child: Counter(product: product),
        )
      ],
    );
  }
}
