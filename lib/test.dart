import 'package:flutter/material.dart';

import 'components/constants.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(

        body: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
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
                        Image.asset("assets/images/image_1.png"),
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
                                      "ssdfs".toUpperCase(),
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .button!
                                          .copyWith(fontSize: 13.0),
                                    ),
                                    Text(
                                      "55".toUpperCase(),
                                      style: TextStyle(
                                          color: primaryColor.withOpacity(0.5)),
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                Spacer(),
                                Text(
                                  '\$440',
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
          },
          itemCount:6 ,
        ),
    );
  }
}
