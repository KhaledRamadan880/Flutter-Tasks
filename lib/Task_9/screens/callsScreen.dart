import 'package:flutter/material.dart';

Widget callsScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
              height: 50,
              width: double.infinity,
              color: Color.fromARGB(255, 219, 219, 219),
              child: const Text(
                'Calls',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              leading: MaterialButton(
                onPressed: () {},
                height: 50,
                color: Color.fromARGB(255, 238, 236, 236),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.link,
                  color: Colors.blue,
                  // size: 15,
                ),
              ),
              minLeadingWidth: 10,
              title: const Text(
                'Create Call Link',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: const Text('Share a link for your WhatsApp call'),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              height: 50,
              width: double.infinity,
              color: Color.fromARGB(255, 219, 219, 219),
              child: const Text(
                'Recent',
                style: TextStyle(fontSize: 15),
              ),
            ),
            call(
                avatarColor: Colors.red,
                nameColor: Colors.black,
                name: 'Mohamed Hosney',
                state: 'Outgoing',
                time: 'today'),
            call(
                avatarColor: Colors.yellow,
                name: 'Ahmed Lotfy',
                nameColor: Colors.black,
                state: 'Incoming',
                time: 'yasterday'),
            call(
                avatarColor: Colors.blue,
                name: 'Khaled Ramadan',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Friday'),
            call(
                avatarColor: Colors.black,
                name: 'Ahmed',
                nameColor: Colors.black,
                state: 'Outgoing',
                time: 'Thursday'),
            call(
                avatarColor: Colors.purple,
                name: 'Gamal Emad',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Wednesday'),
            call(
                avatarColor: Colors.green,
                name: 'Ahmed',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Monday'),
            call(
                avatarColor: Colors.red,
                nameColor: Colors.black,
                name: 'Mohamed Hosney',
                state: 'Outgoing',
                time: 'today'),
            call(
                avatarColor: Colors.yellow,
                name: 'Ahmed Lotfy',
                nameColor: Colors.black,
                state: 'Incoming',
                time: 'yasterday'),
            call(
                avatarColor: Colors.blue,
                name: 'Khaled Ramadan',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Friday'),
            call(
                avatarColor: Colors.black,
                name: 'Ahmed',
                nameColor: Colors.black,
                state: 'Outgoing',
                time: 'Thursday'),
            call(
                avatarColor: Colors.purple,
                name: 'Gamal Emad',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Wednesday'),
            call(
                avatarColor: Colors.green,
                name: 'Ahmed',
                nameColor: Colors.red,
                state: 'Missed',
                time: 'Monday'),
          ],
        ),
      ],
    ),
  );
}

Widget call(
    {required avatarColor,
    required name,
    required state,
    required time,
    required nameColor}) {
  return Container(
    decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
      width: 0.1,
    ))),
    child: ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: avatarColor,
      ),
      title: Text(
        name,
        style: TextStyle(color: nameColor),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.phone,
            size: 18,
          ),
          const SizedBox(width: 5),
          Text(state),
        ],
      ),
      trailing: Text(time),
    ),
  );
}
