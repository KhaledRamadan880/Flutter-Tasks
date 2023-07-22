// ignore: file_names
import 'package:flutter/material.dart';

Widget statusScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
          height: 50,
          width: double.infinity,
          color: Color.fromARGB(255, 219, 219, 219),
          child: const Text(
            'Status',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/IMG_6715.jpg'),
            radius: 30,
          ),
          title: const Text('My Status'),
          subtitle: const Text('Add to my status'),
          trailing: MaterialButton(
              onPressed: () {},
              color: Color.fromARGB(255, 238, 237, 237),
              textColor: Colors.white,
              shape: const CircleBorder(),
              height: 35,
              child: const Icon(
                Icons.edit,
                size: 15,
                color: Colors.blue,
              )),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
          height: 50,
          width: double.infinity,
          color: Color.fromARGB(255, 219, 219, 219),
          child: const Text('Recent Update'),
        ),
        story(avatarColor: Colors.white, name: 'Mhohamed mosa', time: '9m ago'),
        story(
            avatarColor: Colors.black, name: 'Mhohamed Samir', time: '40m ago'),
        story(
            avatarColor: Colors.yellow,
            name: 'Mhohamed Hosney',
            time: '55m ago'),
        story(avatarColor: Colors.purple, name: 'Ahmed Lotfy', time: '3h ago'),
        story(avatarColor: Colors.green, name: 'Emad Gamal', time: '3h ago'),
        story(avatarColor: Colors.white, name: 'Farah', time: '4h ago'),
        story(avatarColor: Colors.black, name: 'Shrouk', time: '13h ago'),
        story(
            avatarColor: Colors.yellow,
            name: 'Mhohamed Hosney',
            time: '17h ago'),
        story(avatarColor: Colors.red, name: 'Mhohamed Mosa', time: '19h ago'),
        story(avatarColor: Colors.purple, name: 'Ahmed Lotfy', time: '22h ago'),
      ],
    ),
  );
}

Widget story({required avatarColor, required name, required time}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
      width: 0.1,
    ))),
    child: ListTile(
      onTap: () {},
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: avatarColor,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.blue,
              width: 2,
            )),
      ),
      title: Text(name),
      subtitle: Text(time),
    ),
  );
}
