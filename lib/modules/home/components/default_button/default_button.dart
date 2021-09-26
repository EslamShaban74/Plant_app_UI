import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';

Container defaultButton({
  required onPressed,
  required text,
}) {
  return Container(
    height: 35,
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(12.0)

    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(text,style: TextStyle(color: Colors.white),),
    ),
  );
}
