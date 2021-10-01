import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice(
      {Key? key,
      required this.title,
      required this.country,
      required this.price})
      : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: kDefaultPadding, top: kDefaultPadding * 0.5),
              child: Text(
                'Angelica'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: kDefaultPadding, top: kDefaultPadding * 0.2),
              child: Text(
                country,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: primaryColor,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: primaryColor),
          ),
        )
      ],
    );
  }
}
