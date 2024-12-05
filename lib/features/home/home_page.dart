import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/home/widgets/clipr_rect.dart';
import 'package:flutter/material.dart';

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
          leading: Image.asset("assets/images/circle.png"),
          // title: Center(
          //   child: SizedBox(
          //     width: 104,
          //     child: Row(
          //       children: [
          //         ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: CustomColor.greyColor,
          //           ),
          //           onPressed: () {},
          //           child: const Row(
          //             children: [
          //               Text(
          //                 "Men ",
          //                 style: TextStyle(color: Colors.white),
          //               ),
          //               Icon(
          //                 Icons.arrow_drop_down,
          //                 color: Colors.white,
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          title: Center(
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                color: CustomColor.greyColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: DropdownButton(
                  value: selectedGender,
                  dropdownColor: CustomColor.greyColor,
                  underline: const SizedBox(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
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
                  icon: Image.asset("assets/images/down_arrow.png"),
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
              onPressed: () {},
              child: Image.asset(
                "assets/images/shop.png",
                height: 40,
                width: 40,
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
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: CustomColor.greyColor,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
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
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteNames.shopCategories,
                      );
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
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
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
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
                  const Text(
                    "Top Selling",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.productsCategories);
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    SizedBox(
                      width: 10,
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
                  const Text(
                    "New in",
                    style: TextStyle(
                        color: CustomColor.buttonColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.productsCategories);
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
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
                    SizedBox(
                      width: 10,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/boy.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    SizedBox(
                      width: 10,
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

//! Widgets
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
