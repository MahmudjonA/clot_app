import 'package:clot_app/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/route/rout_names.dart';
import '../widgets/category_button_widget.dart';

class SearchPageMain extends StatelessWidget {
  const SearchPageMain({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: CustomColor.mainColor,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: CustomColor.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: Colors.white,
          ),
        ),
        title: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: CustomColor.greyColor,
            borderRadius: BorderRadius.circular(45),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 3.0,
            horizontal: 5.0,
          ),
          child:  const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              //filled: true,
              fillColor: Colors.transparent,
              hintText: 'Search',
              hintStyle: TextStyle(
                color: CustomColor.whiteColor,
              ),
              prefixIcon: Icon(
                IconsaxPlusBroken.search_normal_1,
            color: CustomColor.whiteColor,
            size: 20,
          ),
            ),
            style: TextStyle(
              color: CustomColor.whiteColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            CategoryButtonWidget(
                imgURL: "assets/category_images/hoodie.png",
                text: "Hoodies",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Hoodies");
                }),
            CategoryButtonWidget(
                imgURL: "assets/category_images/shorts.png",
                text: "Shorts",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Shorts");
                }),
            CategoryButtonWidget(
                imgURL: "assets/category_images/boots.png",
                text: "Shoes",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Shoes");
                }),
            CategoryButtonWidget(
                imgURL: "assets/category_images/bag.png",
                text: "Bag",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.productsCategories,
                      arguments: "Bag");
                }),
            CategoryButtonWidget(
              imgURL: "assets/category_images/bag.png",
              text: "Accessories",
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.productsCategories,
                    arguments: "Accessories");
              },
            ),
          ],
        ),
      ),
    );
  }
}
