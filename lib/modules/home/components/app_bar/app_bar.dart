import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {},
    ),
  );
}
