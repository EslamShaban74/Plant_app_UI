import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';

class RecommendedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 520,
            press: () {},
          ),
          PlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "USA",
            price: 890,
            press: () {},
          ),
          PlantCard(
            image: "assets/images/image_3.png",
            title: "Bob",
            country: "Egypt",
            price: 420,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String title, image, country;
  final int price;
  final Function press;

  const PlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Column(
              children: [
                Image.asset(image),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(

                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              title.toUpperCase(),
                              style: TextStyle(),
                            ),
                            Text(
                              country.toUpperCase(),
                              style: TextStyle(color: primaryColor.withOpacity(0.5)),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        Spacer(),
                        Text(
                          '\$$price',
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
