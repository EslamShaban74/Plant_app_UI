import 'package:flutter/material.dart';
import 'package:plant_app/modules/home/components/app_bar/app_bar.dart';
import 'package:plant_app/modules/home/components/body/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
