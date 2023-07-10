import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(bussines_card());
}

class bussines_card extends StatelessWidget {
  const bussines_card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task 6',
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Business Card'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                // backgroundColor: Colors.red,

                backgroundImage: AssetImage("assets/images/IMG_6715.jpg"),
              ),
              const SizedBox(height: 50),
              Container(
                color: Colors.white,
                width: 250,
                height: 30,
                child: const Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text(
                      "01011994501",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.white,
                width: 250,
                height: 30,
                child: const Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.mail),
                    SizedBox(width: 10),
                    Text(
                      "khaledramdan@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

// class MyHomePage extends MyApp {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           leading: const Text('data'),
//         ),
//       ),
//     );
//   }
// }
