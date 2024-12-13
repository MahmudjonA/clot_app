import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const Arrow({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: CustomColor.greyColor,
      ),
      onPressed: onPressed,
      icon:  Icon(
        icon,
        color: Colors.white,

      ),
    );
  }
}

// return ElevatedButton(
//   style: ElevatedButton.styleFrom(
//     padding: EdgeInsets.zero,
//     backgroundColor: CustomColor.greyColor,
//     minimumSize: const Size(40, 40),
//   ),
//   onPressed: onPressed,
//   child: Icon(
//   icon,
//     color: CustomColor.whiteColor,
//   ),
// );