import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_9/screens/callsScreen.dart';
import 'package:futter_tasks/Task_9/screens/chatsScreen.dart';
import 'package:futter_tasks/Task_9/screens/statusScreen.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  // currentAccountPictureSize: const Size.fromRadius(50),
                  currentAccountPicture:
                      Image.asset('assets/images/IMG_6715.jpg'),
                  accountName: const Text('Khaled Ramadan'),
                  accountEmail: const Text('khaledramadan@yahoo.com')),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
          title: const Text('WhatsApp '),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.chat),
            SizedBox(width: 20),
          ],
          backgroundColor: Colors.green,
        ),
        body: TabBarView(children: [
          chatScreen(),
          statusScreen(),
          callsScreen(),
        ]),
      ),
    );
  }
}
