import 'package:flutter/material.dart';

import 'components/details_body/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final String titles;
  final String country;
  final int price;
  final String images;
  final int index;

  const DetailsScreen(
    this.titles,
    this.country,
    this.price,
    this.images,
      this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(titles,country,price,images,index),
    );
  }
}
