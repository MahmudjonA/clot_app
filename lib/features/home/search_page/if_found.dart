import 'package:clot_app/features/home/widgets/custom_clip_rect.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/constants/color.dart';

class IfFound extends StatelessWidget {
  const IfFound({super.key});

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
          child: TextField(
            onChanged: (String text) {
              print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW: $text");
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
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
      // ! Body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Filter Bar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Filter with Icon
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
                  // "On Sale" Button
                  Container(
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
                  const SizedBox(width: 8.0),
                  // "Price" Dropdown
                  Container(
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
                  const SizedBox(width: 8.0),
                  // "Sort by" Dropdown
                  Container(
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
                  const SizedBox(width: 8.0),
                  // "Men" Dropdown
                  GestureDetector(
                    onTap: () {
                      show(context);
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
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              color: CustomColor.mainColor,
              height: 400, // Set your desired height
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Clear",
                          style: TextStyle(
                            color: CustomColor.whiteColor,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          "Gender",
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
                  ],
                ),
              ));
        });
  }
}
