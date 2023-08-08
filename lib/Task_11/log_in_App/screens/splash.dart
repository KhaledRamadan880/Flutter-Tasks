import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_11/log_in_App/screens/home_screen.dart';
import 'package:futter_tasks/Task_11/log_in_App/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    CheckLogin();
  }

  void CheckLogin() async {
    final data = await SharedPreferences.getInstance();
    bool isLogedin = data.getBool('islogedIn') ?? false;
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,          
          MaterialPageRoute(
            builder: (context) =>
                isLogedin == false ? const LoginScreen() : const HomeScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutter_icon.png',
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
