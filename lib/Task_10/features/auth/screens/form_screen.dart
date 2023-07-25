import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/core/colors.dart';
import 'package:futter_tasks/Task_10/core/images.dart';
import 'package:futter_tasks/Task_10/core/strings.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/sign_in_tab_bar.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/sign_up_tab_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: AppColors.secondry,
            indicatorWeight: 5,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            tabs: [
              Tab(
                  child: Text(
                AppStrings.signIn,
                style: GoogleFonts.poppins(
                  color: AppColors.secondry,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
              Tab(
                  child: Text(
                AppStrings.signUp,
                style: GoogleFonts.poppins(
                  color: AppColors.secondry,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ],
          ),
          leading: const Visibility(
            visible: false,
            child: Row(),
          ),
          elevation: 0,
          backgroundColor: AppColors.white,
          toolbarHeight: 190,
          title: SizedBox(
            width: 250,
            height: 250,
            child: Image.asset(
              AppImages.formImagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            // sign up TabBar
            SignIn(),
            // sign up TabBar
            SignUp(),
          ],
        ),
      ),
    );
  }
}
