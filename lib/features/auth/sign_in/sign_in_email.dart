import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/continue_widget.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../widgets/log_in_forms.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //! Forms
            LogInForms(text: "Email Address", hideText: false,),
            const SizedBox(
              height: 20,
            ),
            //! Custom button
            CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.signInPassword);
                },
                text: "Continue"),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Don't have an Account ?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.createAccount);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text(
                    "Create One",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const ContinueWidget(
              imgURL: "assets/images/apple.png",
              text: "Continue With Apple",
            ),
            const SizedBox(
              height: 20,
            ),
            const ContinueWidget(
              imgURL: "assets/images/google.png",
              text: "Continue With Google",
            ),
            const SizedBox(
              height: 20,
            ),
            const ContinueWidget(
              imgURL: "assets/images/facebook.png",
              text: "Continue With Facebook",
            ),
          ],
        ),
      ),
    );
  }
}
