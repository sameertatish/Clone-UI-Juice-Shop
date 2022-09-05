// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
  });

  static List<Product> products = [
    Product(
        id: 1,
        title: "Apple Juice",
        price: 234,
        description:
            "Lorem Ipsindustry's  standard dummy text standard dummy text",
        image: "assets/images/apple-juice.png",
        color: Color(0xFFf15d6a)),
    Product(
        id: 2,
        title: "Tomato Juice",
        price: 234,
        description:
            "Lorem Ipsindustry's  standard dummy text standard dummy text",
        image: "assets/images/tomato-design.png",
        color: Color(0xFFf15c43)),
    Product(
        id: 3,
        title: "Raspberry Juice",
        price: 234,
        description:
            "Lorem Ipsindustry's  standard dummy text standard dummy text",
        image: "assets/images/design-raspberry.png",
        color: Color(0xFFed1849)),
    Product(
        id: 4,
        title: "Pomegranate Juice",
        price: 234,
        description:
            "Lorem Ipsindustry's  standard dummy text standard dummy text",
        image: "assets/images/design-pomegranate.png",
        color: Color(0xFF9b080c)),
  ];
}
