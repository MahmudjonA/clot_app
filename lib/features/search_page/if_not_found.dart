import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/route/rout_names.dart';

class IfNotFound extends StatelessWidget {
  const IfNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Center(
        child: SizedBox(
          height: 400,
          width: double.infinity,
          child: Column(
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/search.png",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Sorry, we couldn't find any\n matching result for your\n Search.",
                style: TextStyle(color: Colors.white, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.buttonColor,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.searchPageMain);
                  },
                  child: const Center(
                    child: Text(
                      "Explore Categories",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
