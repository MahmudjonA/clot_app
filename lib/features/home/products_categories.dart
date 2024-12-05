import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/home/widgets/clipr_rect.dart';
import 'package:flutter/material.dart';
import '../auth/widgets/arrow.dart';

class ProductsCategories extends StatefulWidget {
  const ProductsCategories({super.key});

  @override
  State<ProductsCategories> createState() => _ProductsCategoriesState();
}

class _ProductsCategoriesState extends State<ProductsCategories> {
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
                    Navigator.pushReplacementNamed(context, RouteNames.shopCategories);
                  },
                  imgURL: "assets/images/back_arrow.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Data",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Wrap(
                  spacing: 15, // Space between items horizontally
                  runSpacing: 15, // Space between rows vertically
                  children: [
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
