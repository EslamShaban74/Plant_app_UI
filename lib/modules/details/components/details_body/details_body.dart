import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';
import 'package:plant_app/modules/details/components/image_and_icons/image_and_icons.dart';
import 'package:plant_app/modules/details/components/title_and_price/title_and_price.dart';

class DetailsBody extends StatelessWidget {
  final List<String> titles;
  final List<String> country;
  final List<int> price;
  final List<String> images;
  final int index;

  const DetailsBody(
    this.titles,
    this.country,
    this.price,
    this.images,
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ImageAndIcons(size: size),
        TitleAndPrice(
          title: '${titles[index]}',
          country: '${country[index]}',
          price: price[index],
        ),
        const SizedBox(height: 20.0),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: size.height * 0.09,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'BUY NOW!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: size.height * 0.09,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'DESCRIPTION',
                      style: TextStyle(color: primaryColor),
                    )),
              ))
            ],
          ),
        )
      ],
    );

    // return Padding(
    //   padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
    //   child: SizedBox(
    //     height: size.height * 0.8,
    //     child: Row(
    //       children: <Widget>[
    //         Expanded(
    //           child: Padding(
    //             padding:
    //             const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
    //             child: Column(
    //               children: <Widget>[
    //                 Align(
    //                   alignment: Alignment.topLeft,
    //                   child: IconButton(
    //                     padding:
    //                     EdgeInsets.symmetric(horizontal: kDefaultPadding),
    //                     icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
    //                     onPressed: () {
    //                       Navigator.pop(context);
    //                     },
    //                   ),
    //                 ),
    //                 Spacer(),
    //                 IconCard(icon: "assets/icons/sun.svg"),
    //                 IconCard(icon: "assets/icons/icon_2.svg"),
    //                 IconCard(icon: "assets/icons/icon_3.svg"),
    //                 IconCard(icon: "assets/icons/icon_4.svg"),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Container(
    //           height: size.height * 0.723,
    //           width: size.width * 0.75,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(63),
    //               bottomLeft: Radius.circular(63),
    //             ),
    //             boxShadow: [
    //               BoxShadow(
    //                 offset: Offset(0, 10),
    //                 blurRadius: 60,
    //                 color: primaryColor.withOpacity(0.29),
    //               ),
    //             ],
    //             image: DecorationImage(
    //               alignment: Alignment.centerLeft,
    //               fit: BoxFit.cover,
    //               image: AssetImage("assets/images/img.png"),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
