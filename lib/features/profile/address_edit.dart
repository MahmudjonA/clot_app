import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/arrow.dart';
import 'package:flutter/material.dart';

class AddressEdit extends StatelessWidget {
  const AddressEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.bottomNavBar);
                    },
                    imgURL: 'assets/icons/back_arrow.png',
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              addressEdit(),
              addressEdit(),

            ],
          ),
        ),
      ),
    );
  }
}
Widget addressEdit(){
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "2715 Ash Dr. San Jose, South Dakota 83475",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Edit",
              style: TextStyle(
                color: CustomColor.buttonColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}