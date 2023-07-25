import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/core/icons.dart';
import 'package:futter_tasks/Task_10/core/strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import 'form_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // user name TextField
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      AppStrings.name,
                      style: GoogleFonts.poppins(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    prefixIcon: AppIcons.name,
                    prefixIconColor: AppColors.grey,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.secondry,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // phone Number TextField
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      AppStrings.phone,
                      style: GoogleFonts.poppins(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    prefixIcon: AppIcons.phone,
                    prefixIconColor: AppColors.grey,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.secondry,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Email TextField
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      AppStrings.email,
                      style: GoogleFonts.poppins(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    prefixIcon: AppIcons.mail,
                    prefixIconColor: AppColors.grey,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.secondry,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                // Password TextField
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      AppStrings.password,
                      style: GoogleFonts.poppins(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    prefixIcon: AppIcons.lock,
                    prefixIconColor: AppColors.grey,
                    suffixIcon: AppIcons.eyeOff,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.secondry,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Department TextField
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      AppStrings.department,
                      style: GoogleFonts.poppins(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    suffixIcon: AppIcons.arrowDown,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: AppColors.secondry,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // sign in Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const FormPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondry,
                      fixedSize: const Size(double.maxFinite, 50)),
                  child: const Text(AppStrings.signIn),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
