import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/home/widgets/custom_clip_rect.dart';
import 'package:clot_app/features/home/widgets/my_circle_avatar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGender = "Men";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          leading: GestureDetector(
            onTap: () {},
            child: Image.asset("assets/images/circle.png"),
          ),
          title: Center(
            child: Container(
              padding: const EdgeInsets.only(left: 12),
              width: 100,
              decoration: BoxDecoration(
                color: CustomColor.greyColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: DropdownButton(
                value: selectedGender,
                dropdownColor: CustomColor.greyColor,
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  setState(
                    () {
                      selectedGender = newValue!;
                    },
                  );
                },
                items: const [
                  DropdownMenuItem(
                    value: "Men",
                    child: Row(
                      children: [
                        Text(
                          "Men",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Women",
                    child: Row(
                      children: [
                        Text(
                          "Women",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
                icon: Image.asset(
                  "assets/icons/down_arrow.png",
                ),
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: CustomColor.buttonColor,
                minimumSize: const Size(40, 40),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, RouteNames.cartMain);
                Navigator.pushNamed(context, RouteNames.cartPage);
              },
              child: const Icon(
                IconsaxPlusBroken.bag_2,
                color: CustomColor.whiteColor,
              ),
            ),
          ],
        ),
        //! Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.searchPageMain);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColor.greyColor,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20.0,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          IconsaxPlusBroken.search_normal_1,
                          color: CustomColor.whiteColor,
                          size: 25,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          tr('homePage.search'),
                          style: const TextStyle(
                            color: CustomColor.whiteColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("homePage.categories"),
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteNames.shopCategories,
                      );
                    },
                    child: Text(
                      tr("homePage.seeAll"),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circleAvatar(
                      "assets/category_images/hoodie.png",
                      tr("homePage.hoodies"),
                      () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Hoodies");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/shorts.png",
                      tr("homePage.shorts"),
                      () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Shorts");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/boots.png",
                      tr('homePage.shoes'),
                      () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Shoes");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/bag.png",
                      tr('homePage.bag'),
                      () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Bag");
                      },
                    ),
                    circleAvatar(
                      "assets/category_images/glasses.png",
                      tr('homePage.accessories'),
                      () {
                        Navigator.pushNamed(
                            context, RouteNames.productsCategories,
                            arguments: "Accessories");
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr('homePage.topSelling'),
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteNames.productsCategories,
                          arguments: 'Top Selling');
                    },
                    child: Text(
                      tr('homePage.seeAll'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
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
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("homePage.newIn"),
                    style: const TextStyle(
                        color: CustomColor.buttonColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteNames.productsCategories,
                        arguments: 'New in',
                      );
                    },
                    child: Text(
                      tr('homePage.seeAll'),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
