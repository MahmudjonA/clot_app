import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/profile/widgets/address_edit_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AddressEdit extends StatelessWidget {
  const AddressEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
       appBar:  AppBar(
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
            "Address",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              AddressEditWidget(),
              AddressEditWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
