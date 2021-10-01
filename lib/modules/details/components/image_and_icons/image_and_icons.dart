import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/constants.dart';
import 'package:plant_app/modules/details/components/icon_card/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  final Size size;

  const ImageAndIcons({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 4, horizontal: kDefaultPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                ),
              ),
            ),
            IconCard(icon: "assets/icons/sun.svg"),
            IconCard(icon: "assets/icons/icon_2.svg"),
            IconCard(icon: "assets/icons/icon_3.svg"),
            IconCard(icon: "assets/icons/icon_4.svg"),
          ],
        ),
        Container(
          height: size.height*0.573,
          width: size.width*0.77,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,10),
                blurRadius:60,
                color: primaryColor.withOpacity(0.3),
              )
            ],
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/img.png"),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
