import 'package:flutter/material.dart';

class BussinessCard extends StatelessWidget {
  final email;
  final password;
  final name;
  final phone;
  const BussinessCard(
      {super.key,
      required this.email,
      required this.password,
      required this.name,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bussiness Card'),
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color.fromARGB(255, 214, 212, 212),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  // backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/IMG_6715.jpg'),
                  radius: 80,
                ),
                const SizedBox(
                  height: 10,
                ),
                userData(icon: Icons.email, data: email),
                userData(icon: Icons.lock, data: password),
                userData(icon: Icons.person, data: name),
                userData(icon: Icons.phone, data: phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget userData({required icon, required data}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.deepPurple),
      width: 250,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(children: [
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 10,
          ),
          Text(
            data,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    ),
  );
}
