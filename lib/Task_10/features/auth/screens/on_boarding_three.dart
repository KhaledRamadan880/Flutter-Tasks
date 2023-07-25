import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/core/colors.dart';
import 'package:futter_tasks/Task_10/core/images.dart';
import 'package:futter_tasks/Task_10/core/strings.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/form_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 35, 24, 30),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Image
              SizedBox(
                width: 280,
                height: 280,
                child: Image.asset(AppImages.imagePathThree),
              ),
              const SizedBox(height: 10),
              // title
              Column(
                children: [
                  Text(
                    AppStrings.titleThree,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    AppStrings.subtitleThree,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              // Start button
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FormPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondry,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.start,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
