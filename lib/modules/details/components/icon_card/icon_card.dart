import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/constants.dart';

// class IconCard extends StatelessWidget {
//   const IconCard({
//     Key ?key,
//     required this.icon,
//   }) : super(key: key);
//
//   final String icon;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
//       padding: EdgeInsets.all(kDefaultPadding / 2),
//       height: 62,
//       width: 62,
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(6),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 15),
//             blurRadius: 22,
//             color: primaryColor.withOpacity(0.22),
//           ),
//           BoxShadow(
//             offset: Offset(-15, -15),
//             blurRadius: 20,
//             color: Colors.white,
//           ),
//         ],
//       ),
//       child: SvgPicture.asset(icon),
//     );
//   }
// }

class IconCard extends StatelessWidget {
  const IconCard({Key? key, required this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding,bottom: kDefaultPadding*2,right: kDefaultPadding),
      padding: EdgeInsets.only(),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: primaryColor.withOpacity(0.32),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
