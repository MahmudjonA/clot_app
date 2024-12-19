import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/continue_widget.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../widgets/log_in_forms.dart';

class SignInEmail extends StatefulWidget {
  const SignInEmail({super.key});

  @override
  State<SignInEmail> createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {
  String selectedLanguage = "Ru";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.mainColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: DropdownButton(
              value: selectedLanguage,
              dropdownColor: CustomColor.greyColor,
              underline: const SizedBox(),
              onChanged: (String? newValue) {
                setState(
                  () {
                    selectedLanguage = newValue!;
                  },
                );
                if (newValue == 'Ru') {
                  EasyLocalization.of(context)?.setLocale(const Locale('ru', 'RU'));
                } else if (newValue == 'Us') {
                  EasyLocalization.of(context)?.setLocale(const Locale('en', 'US'));
                }
              },
              items: const [
                DropdownMenuItem(
                  value: "Ru",
                  child: Row(
                    children: [
                      Text(
                        "Ru",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: "Us",
                  child: Row(
                    children: [
                      Text(
                        "Us",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
              icon: Image.asset(
                "assets/icons/down_arrow.png",
              ),
            ),
          ),
        ],
      ),
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('signInEmail.title'),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //! Forms
            LogInForms(
              text: tr('signInEmail.emailAddress'),
              hideText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            //! Custom button
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.signInPassword);
              },
              text: tr('signInEmail.continue'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  tr('signInEmail.noAccount'),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
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
                  child: Text(
                    tr('signInEmail.createOne'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ContinueWidget(
              imgURL: "assets/images/apple.png",
              text: tr('signInEmail.continueWithApple'),
            ),
            const SizedBox(
              height: 20,
            ),
            ContinueWidget(
              imgURL: "assets/images/google.png",
              text: tr('signInEmail.continueWithGoogle'),
            ),
            const SizedBox(
              height: 20,
            ),
            ContinueWidget(
              imgURL: "assets/images/facebook.png",
              text: tr("continueWithFacebook"),
            ),
          ],
        ),
      ),
    );
  }
}
