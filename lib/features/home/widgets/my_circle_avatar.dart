import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

Widget circleAvatar(String imgURL, String text) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: CustomColor.buttonColor,
        backgroundImage: AssetImage(
          imgURL,
        ),
        radius: 40,
      ),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
