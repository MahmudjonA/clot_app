import 'package:clot_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 71),
          height: 550,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Orders",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/check.png",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "No Orders yet",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.buttonColor,
                      minimumSize: const Size(185, 52),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,RouteNames.shopCategories);
                    },
                    child: const Text(
                      "Explore Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
