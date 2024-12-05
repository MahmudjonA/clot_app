import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/arrow.dart';
import 'package:flutter/material.dart';
import '../../core/constants/color.dart';

class ShopCategories extends StatelessWidget {
  const ShopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.bottomNavBar,
                  );
                },
                imgURL: "assets/images/back_arrow.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Shop by Categories",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              elevateButton('assets/images/shop.png', "Hoodies",context),
              const SizedBox(
                height: 15,
              ),
              elevateButton('assets/images/shop.png', "Hoodies",context),
              const SizedBox(
                height: 15,
              ),
              elevateButton('assets/images/shop.png', "Hoodies",context),
              const SizedBox(
                height: 15,
              ),
              elevateButton('assets/images/shop.png', "Hoodies",context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget elevateButton(String imgURL, String text,BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, RouteNames.productsCategories);
    },
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 64),
      backgroundColor: CustomColor.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Adjust radius as needed
      ),
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            imgURL,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(width: 20),
        // Optional spacing between avatar and text
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
