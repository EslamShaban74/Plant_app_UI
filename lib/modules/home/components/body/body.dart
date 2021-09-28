import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/modules/home/components/header_with_search_box/header_with_search_box.dart';
import 'package:plant_app/modules/home/components/recommended_plants/recommended_plants.dart';
import 'package:plant_app/modules/home/components/title_with_button/title_with_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recommended', press: () {}),
          RecommendedPlants(),

        ],
      ),
    );
  }
}
