import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/auth/widgets/arrow.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: IconsaxPlusBroken.arrow_left_2,
                  ),
                  const Text(
                    "Add Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
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
                      hintText: "Street Address",
                      fillColor: CustomColor.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      hintText: "City",
                      fillColor: CustomColor.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                            hintText: "State",
                            fillColor: CustomColor.greyColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
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
                            hintText: "Zip Code",
                            fillColor: CustomColor.greyColor,
                          ),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
