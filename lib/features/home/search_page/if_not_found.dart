import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/constants/color.dart';
import '../../../core/route/rout_names.dart';

class IfNotFound extends StatelessWidget {
  const IfNotFound({super.key});

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
          child:  TextField(

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
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/search.png",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Sorry, we couldn't find any\n matching result for your\n Search.",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.buttonColor,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.searchPageMain);
                    },
                    child: const Center(
                      child: Text(
                        "Explore Categories",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
