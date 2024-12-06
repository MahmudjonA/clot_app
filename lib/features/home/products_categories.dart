import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/home/widgets/custom_clip_rect.dart';
import 'package:flutter/material.dart';
import '../auth/widgets/arrow.dart';

class ProductsCategories extends StatelessWidget {
  const ProductsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 12,
            right: 8,
            bottom: 8,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Arrow(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.bottomNavBar);
                  },
                  imgURL: "assets/icons/back_arrow.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  runSpacing: 12,
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: const CustomClipRRect(
                        imgURL: "assets/images/boy.png",
                        text: "Men's Harrington Jacket",
                        price: 1755,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
