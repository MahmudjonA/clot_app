import 'package:clot_app/features/home/widgets/custom_clip_rect.dart';
import 'package:clot_app/features/search_page/widgets/show_deals_widget.dart';
import 'package:clot_app/features/search_page/widgets/show_gender_widget.dart';
import 'package:clot_app/features/search_page/widgets/show_price_widget.dart';
import 'package:clot_app/features/search_page/widgets/show_sort_by_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/constants/color.dart';

class IfFound extends StatelessWidget {
  const IfFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! Filter Bar
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: CustomColor.buttonColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        IconsaxPlusBroken.filter,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    showDeals(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: CustomColor.greyColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      'On Sale',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    showPrice(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: CustomColor.buttonColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          IconsaxPlusBroken.arrow_down_2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    showSortBy(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: CustomColor.greyColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Sort by',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          IconsaxPlusBroken.arrow_down_2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    showGender(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: CustomColor.buttonColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Men',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          IconsaxPlusBroken.arrow_down_2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //! Filter Bar
          const SizedBox(
            height: 20,
          ),
          const Text(
            "53 Results Found",
            style: TextStyle(
                color: CustomColor.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
              crossAxisCount: 2,
              children: const [
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
                CustomClipRRect(
                  imgURL: "assets/images/boy.png",
                  text: "Men's Harrington Jacket",
                  price: 1755,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
