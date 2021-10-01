import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedPlantCard(
              image: 'assets/images/bottom_img_1.png', press: () {}),
          FeaturedPlantCard(
              image: 'assets/images/bottom_img_2.png', press: () {})
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  final Function press;

  const FeaturedPlantCard({Key? key, required this.image, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          //margin: EdgeInsets.all(12),
          width: size.width * 0.8,
          height: 185,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              )),
        ),
      ),
    );
  }
}
