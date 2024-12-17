import 'package:clot_app/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import 'if_found.dart';

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
      body:
        // const MainSearchPage()
      const IfFound(),
      // IfNotFound(),


    );
  }
}