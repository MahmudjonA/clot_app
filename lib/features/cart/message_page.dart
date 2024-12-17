import 'package:flutter/material.dart';
import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.buttonColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100),
            height: MediaQuery.of(context).size.height / 1.8,
            color: CustomColor.buttonColor,
            child: Image.asset(
              "assets/images/message.png",
              // fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            height: MediaQuery.of(context).size.height / 2.25,
            decoration: const BoxDecoration(
              color: CustomColor.greyColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Order Placed \nSuccessfully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "You will receive an email confirmation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.bottomNavBar);
                  },
                  text: 'See Order Details',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
