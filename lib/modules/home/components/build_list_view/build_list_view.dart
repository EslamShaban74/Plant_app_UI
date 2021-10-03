import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';

Widget buildPlantCard(titles, country, price, context,  images) {
  return ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) => Row(
      children: <Widget>[
        PlantCard(
          titles: titles[index],
          country: country[index],
          price: price[index],
          context: context,
          index: index,

          image: images,
        ),
      ],
    ),
    // separatorBuilder: (context, index) => Padding(
    //   padding: const EdgeInsetsDirectional.only(start: 20.0),
    //   child: Container(
    //     width: double.infinity,
    //     height: 1,
    //     color: Colors.grey[300],
    //   ),
    // ),
    itemCount: titles.length,
  );
}

class PlantCard extends StatelessWidget {
  final List<String> titles;
  final List<String> country;
  final List<int> price;
  final List<String> image;
  final int index;


  const PlantCard({
    Key? key,
    required this.titles,
    required this.country,
    required this.price,
    required context,
    required this.index,
    required this.image,

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
            // onTap: press,
            child: Column(
              children: [
                Image.asset(image[index]),
                Container(
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0.5),
                          blurRadius: 20,
                          color: primaryColor.withOpacity(0.4),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              titles[index].toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .button!
                                  .copyWith(fontSize: 13.0),
                            ),
                            Text(
                              country[index].toUpperCase(),
                              style: TextStyle(
                                  color: primaryColor.withOpacity(0.5)),
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
