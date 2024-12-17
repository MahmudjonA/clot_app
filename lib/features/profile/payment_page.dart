import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/auth/widgets/arrow.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/route/rout_names.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

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
          "Add Address",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            paymentContainer(context),
            paymentContainer(context),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Paypal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: CustomColor.greyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cloth@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Arrow(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.addCard);
                    },
                    icon: IconsaxPlusBroken.arrow_right_3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//! Widget
Widget paymentContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "**** 4187",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Image.asset('assets/images/pay.png'),
          const SizedBox(
            width: 200,
          ),
          Arrow(
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.addCard);
            },
            icon: IconsaxPlusBroken.arrow_right_3,
          ),
        ],
      ),
    ),
  );
}
