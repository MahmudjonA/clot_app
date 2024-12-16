import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  const ButtonWidget({super.key, required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onTap = !onTap;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.only(left: 25, right: 25),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: onTap ? CustomColor.buttonColor : CustomColor.greyColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: const TextStyle(
                color: CustomColor.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (onTap)
              const Icon(
                Icons.check_rounded,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
