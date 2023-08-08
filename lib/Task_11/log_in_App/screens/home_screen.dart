import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/flutter_icon.png')),
              accountName: const Text('Khaled'),
              accountEmail: const Text(''),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.library_music_outlined),
                      SizedBox(width: 10),
                      Text('Fragment 1'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.library_music_outlined),
                      SizedBox(width: 10),
                      Text('Fragment 2'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text('Log Out'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home screen'),
          ],
        ),
      ),
    );
  }
}
