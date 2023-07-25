import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/core/icons.dart';
import 'package:futter_tasks/Task_10/core/strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Task_9/whatsApp.dart';
import '../../../core/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color emailEnabledBorderColor = AppColors.grey;
  Color emailEocusedBorderColor = AppColors.secondry;
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
                // Email TextField
                TextFormField(
                  controller: emailController,
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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: emailEnabledBorderColor,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: emailEocusedBorderColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                // Password TextField
                TextFormField(
                  controller: passwordController,
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
                    suffixIconColor: AppColors.grey,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.forgetPassword,
                      style: GoogleFonts.poppins(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                // sign in Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const WhatsApp()));
                    });
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
