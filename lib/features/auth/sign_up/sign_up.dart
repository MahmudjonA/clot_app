import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:clot_app/features/auth/widgets/log_in_forms.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/route/rout_names.dart';
import '../widgets/arrow.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Arrow(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.signInEmail,
                  );
                },
                icon: IconsaxPlusBroken.arrow_left_2,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                tr('createAccount.title'),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogInForms(
                      text: tr('createAccount.firstName'),
                      hideText: false,
                    ),
                    LogInForms(
                      text: tr('createAccount.lastName'),
                      hideText: false,
                    ),
                    LogInForms(
                      text: tr('createAccount.emailAddress'),
                      hideText: false,
                    ),
                    LogInForms(
                      text: tr('createAccount.password'),
                      hideText: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.logInAbout);
                },
                text: tr('createAccount.continue'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    tr('createAccount.haveAccount'),
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signInEmail);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Sets the text color
                      textStyle: const TextStyle(
                        fontSize: 16, // Example for font size (optional)
                        fontWeight:
                            FontWeight.bold, // Example for bold text (optional)
                      ),
                    ),
                    child: Text(
                      tr('createAccount.alreadyHave'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
