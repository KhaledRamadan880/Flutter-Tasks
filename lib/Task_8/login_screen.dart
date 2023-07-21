import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_8/business_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool obscureText = true;

  // bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('login'),
          backgroundColor: Colors.deepPurple,
          leading: const Icon(Icons.menu),
        ),
        body: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(children: [
            // email field
            textField(
              controllerName: emailController,
              prefixIcon: Icons.mail,
              labelText: 'Email',
              hintText: 'Enter Your email',
              widget: const Text(''),
            ),
            // password field
            TextFormField(
              obscureText: obscureText,
              controller: passwordController,
              decoration: InputDecoration(
                label: const Text('Password'),
                labelStyle: const TextStyle(color: Colors.grey),
                hintText: 'Enter your password',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.lock),
                prefixIconColor: Colors.grey,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          )),
                // suffixIconColor: Colors.grey,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 1.5,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  gapPadding: 10,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // name field
            textField(
              controllerName: nameController,
              prefixIcon: Icons.person,
              labelText: 'Name',
              hintText: 'Enter Your name',
              widget: const Text(''),
            ),
            // phone number field
            textField(
              controllerName: phoneController,
              prefixIcon: Icons.phone,
              labelText: 'Phone Number',
              hintText: 'Enter Your phone',
              widget: const Text(''),
            ),
            // Button
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BussinessCard(
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text,
                              phone: phoneController.text,
                            )));
              },
              color: Colors.deepPurple,
              minWidth: 100,
              height: 40,
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget textField(
    {required controllerName,
    required prefixIcon,
    required labelText,
    required hintText,
    required widget}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: TextFormField(
      controller: controllerName,
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: Colors.grey,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.deepPurple,
            width: 1.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.deepPurple,
            width: 3,
          ),
        ),
      ),
    ),
  );
}
