import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/core/colors.dart';
import 'package:futter_tasks/Task_10/core/icons.dart';
import 'package:futter_tasks/Task_10/core/images.dart';
import 'package:futter_tasks/Task_10/core/strings.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/form_screen.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/on_boarding_one.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/on_boarding_three.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 35, 24, 30),
        child: Column(
          children: [
            // skip button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FormPage(),
                      ),
                    );
                  },
                  child: Text(AppStrings.skip,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Image
            SizedBox(
              width: 280,
              height: 280,
              child: Image.asset(AppImages.imagePathTwo),
            ),
            const SizedBox(height: 10),
            // title
            Column(
              children: [
                Text(
                  AppStrings.titleTwo,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  AppStrings.subtitleTwo,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            // next button
            const Spacer(),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OnBoardingScreenOne(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondry,
                      fixedSize: const Size(50, 30),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppIcons.arrowLeft,
                      ],
                    )),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OnBoardingScreenThree(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondry,
                      fixedSize: const Size(100, 30),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.next,
                        ),
                        AppIcons.arrowRight,
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
