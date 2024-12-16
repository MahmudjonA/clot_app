import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import 'button_widget.dart';

void showSortBy(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: CustomColor.mainColor,
        height: 450, // Set your desired height
        child: Padding(
          padding: const EdgeInsets.only(top: 9, left: 9, right: 9),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Clear",
                      style: TextStyle(
                        color: CustomColor.whiteColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "Sort by",
                    style: TextStyle(
                      color: CustomColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    color: CustomColor.whiteColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const ButtonWidget(text: 'Recommended',),
              const ButtonWidget(text: 'Newest',),
              const ButtonWidget(text: 'Lowest - Highest Price',),
              const ButtonWidget(text: 'Highest - Lowest Price',),
            ],
          ),
        ),
      );
    },
  );
}
