import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/constants.dart';
import 'package:plant_app/modules/details/components/icon_card/icon_card.dart';

class ImageAndIcons extends StatefulWidget {
  final Size size;
  final String images;
  int index;

  ImageAndIcons(
      {Key? key, required this.size, required this.images, required this.index})
      : super(key: key);

  @override
  _ImageAndIconsState createState() => _ImageAndIconsState();
}

class _ImageAndIconsState extends State<ImageAndIcons> {
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
                    // if (widget.index == 1) {
                    //   setState(() {
                    //     widget.index = 0;
                    //   });
                    // } else {
                      Navigator.pop(context);
                    // }
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
          height: widget.size.height * 0.573,
          width: widget.size.width * 0.77,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: primaryColor.withOpacity(0.3),
              )
            ],
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(widget.images),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
