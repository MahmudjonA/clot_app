import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../core/constants/color.dart';
import '../auth/widgets/custom_button.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      appBar: AppBar(
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
        title: const Text(
          "Add Card",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: "Card Number",
                    fillColor: CustomColor.greyColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            // InputBorder.none,
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontSize: 16),
                          hintText: "CCV",
                          fillColor: CustomColor.greyColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            // InputBorder.none,
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontSize: 16),
                          hintText: "Exp",
                          fillColor: CustomColor.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // InputBorder.none,
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: "Cardholder Name",
                    fillColor: CustomColor.greyColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 500,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Save')
          ],
        ),
      ),
    );
  }
}
