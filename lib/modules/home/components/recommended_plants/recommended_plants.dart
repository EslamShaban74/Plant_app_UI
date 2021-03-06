import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:plant_app/modules/home/components/build_list_view/build_list_view.dart';

class RecommendedPlants extends StatelessWidget {
  List<String> titles = ["Samantha", "Angelica", "Bob"];

  List<String> country = ["Egypt", "Russia", "Palestine"];

  List<int> price = [
    440,
    960,
    555,
  ];

  List<String> images = [
    'assets/images/image_1.png',
    'assets/images/image_2.png',
    'assets/images/image_3.png',
  ];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return buildPlantCard(
      titles,
      country,
      price,
      context,
      images,
      size,
    );
  }
}

// class PlantCard extends StatelessWidget {
//   final String title, image, country;
//   final int price;
//   final VoidCallback press;
//
//   const PlantCard({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.country,
//     required this.price,
//     required this.press,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.only(
//         left: kDefaultPadding,
//         top: kDefaultPadding,
//         bottom: kDefaultPadding,
//       ),
//       width: size.width * 0.4,
//       child: Column(
//         children: <Widget>[
//           GestureDetector(
//             onTap: press,
//             child: Column(
//               children: [
//                 Image.asset(image),
//                 Container(
//                   height: size.height*0.05,
//                   decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           offset:Offset(0,0.5),
//                           blurRadius:20,
//                           color: primaryColor.withOpacity(0.4),
//                         )
//                       ],
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10),
//                       )),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 8),
//                     child: Row(
//                       children: <Widget>[
//                         Column(
//                           children: <Widget>[
//                             Text(
//                               title.toUpperCase(),
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .button!
//                                   .copyWith(fontSize: 13.0),
//                             ),
//                             Text(
//                               country.toUpperCase(),
//                               style: TextStyle(
//                                   color: primaryColor.withOpacity(0.5)),
//                             )
//                           ],
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                         ),
//                         Spacer(),
//                         Text(
//                           '\$$price',
//                           style: TextStyle(color: primaryColor),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
