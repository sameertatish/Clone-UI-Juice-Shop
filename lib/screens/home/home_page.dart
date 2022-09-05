// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'widgets/body.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
