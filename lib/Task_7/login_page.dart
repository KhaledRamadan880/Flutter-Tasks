import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_7/bussines_card.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                // const Text('Login'),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Email',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,                  
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Password',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text == 'flutter@gmail.com' &&
                          passwordController.text == 'upacademy') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bussines_card()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
