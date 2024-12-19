import 'package:clot_app/app.dart';
import 'package:clot_app/core/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LogInAbout extends StatefulWidget {
  const LogInAbout({super.key});

  @override
  State<LogInAbout> createState() => _LogInAboutState();
}

class _LogInAboutState extends State<LogInAbout> {
  bool changeButtonColor = true;

  void changeColorMan() {
    setState(() {
      changeButtonColor = true;
    });
  }

  void changeColorWoman() {
    setState(() {
      changeButtonColor = false;
    });
  }

  String selectedAgeRange = "Select Age Range";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text(
                   tr('logInAbout.title'),
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Text(
                    tr('logInAbout.whoDoYouShopFor'),
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            changeColorMan();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: changeButtonColor
                                ? CustomColor.buttonColor
                                : CustomColor.greyColor,
                          ),
                          child:  Text(
                              tr('logInAbout.men'),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            changeColorWoman();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: changeButtonColor
                                ? CustomColor.greyColor
                                : CustomColor.buttonColor,
                          ),
                          child:  Text(
                              tr('logInAbout.women'),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 25),
                   Text(
                     tr('logInAbout.howOldAreYou'),
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: CustomColor.greyColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedAgeRange.tr(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        DropdownButton(
                          icon: Image.asset(
                            "assets/icons/down_arrow.png",
                          ),
                          dropdownColor: CustomColor.greyColor,
                          underline: const SizedBox(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedAgeRange = newValue!;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: "10-20",
                              child: Text(
                                "10-20",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DropdownMenuItem(
                                value: "21-30",
                                child: Text(
                                  "21-30",
                                  style: TextStyle(color: Colors.white),
                                )),
                            DropdownMenuItem(
                                value: "31-40",
                                child: Text(
                                  "31-40",
                                  style: TextStyle(color: Colors.white),
                                )),
                            DropdownMenuItem(
                                value: "41+",
                                child: Text(
                                  "41+",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 120,
              width: double.infinity,
              color: CustomColor.greyColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 30, left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.buttonColor,
                    minimumSize: const Size(double.infinity, 49),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/bottomNavBar");
                  },
                  child:  Center(
                    child: Text(
                      tr('logInAbout.finish'),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
