import 'package:flutter/material.dart';
import 'components/home_body.dart';
import 'components/home_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
