import 'package:flutter/material.dart';

Widget chatScreen() {
  return Stack(    
    children: [
    ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            listTile(
              avatarColor: Colors.deepOrange,
              name: 'Mohamed Hosney',
              subtitleIcon: const Icon(Icons.mic),
              massageText: '0:07',
              massageTime: '1:30 PM',
              unreadMassage: true,
              unreadMassageNum: '2',
            ),
            listTile(
              avatarColor: Colors.grey,
              name: 'Mohamed Mosa',
              subtitleIcon: const Icon(Icons.check),
              massageText: 'Photo',
              massageTime: 'Friday',
              unreadMassage: false,
              unreadMassageNum: '',
            ),
            listTile(
              avatarColor: Colors.yellow,
              name: 'Mohamed Samir',
              subtitleIcon: const Row(
                children: [
                  Icon(Icons.check),
                  Icon(Icons.photo_camera_rounded),
                ],
              ),
              massageText: 'ازيك يا هندسة اخبارك ايه؟',
              massageTime: '11:45 AM',
              unreadMassage: false,
              unreadMassageNum: '',
            ),
            listTile(
              avatarColor: Colors.green[300],
              name: 'Ahmed Lotfy',
              subtitleIcon: const Icon(Icons.done_all, color: Colors.blue),
              massageText: 'متنساش الفلاشة وانت جي الكلية',
              massageTime: '1:12 AM',
              unreadMassage: false,
              unreadMassageNum: '',
            ),
            listTile(
              avatarColor: Colors.black,
              name: 'Emad Gamal',
              subtitleIcon: const Text(''),
              massageText: 'You are a great man',
              massageTime: '11:45 AM',
              unreadMassage: true,
              unreadMassageNum: '1',
            ),
            listTile(
              avatarColor: Colors.blue,
              name: 'Farah',
              subtitleIcon: const Icon(Icons.tag_faces_sharp),
              massageText: 'Sticker',
              massageTime: '11:45 AM',
              unreadMassage: true,
              unreadMassageNum: '2',
            ),
            listTile(
              avatarColor: Colors.purple,
              name: 'Shrouk',
              subtitleIcon: const Text(''),
              massageText: '',
              massageTime: '11:45 AM',
              unreadMassage: false,
              unreadMassageNum: '',
            ),
          ],
        );
      },
      itemCount: 2,
    ),
    Positioned(
      right: 10,
      bottom: 20,
      child: MaterialButton(
          onPressed: () {},
          color: Colors.black,
          textColor: Colors.white,
          shape: CircleBorder(),
          height: 70,
          child: const Icon(Icons.photo_camera)),
    )
  ]);
}

Widget listTile(
    {required avatarColor,
    required name,
    required subtitleIcon,
    required massageText,
    required massageTime,
    required unreadMassage,
    required unreadMassageNum}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.1)),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        onTap: () {},
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: avatarColor,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Row(
          children: [subtitleIcon, const SizedBox(width: 5), Text(massageText)],
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Text(massageTime),
              const SizedBox(height: 2),
              Visibility.maintain(
                visible: unreadMassage,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.green,
                  child: Text(
                    unreadMassageNum,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
