import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          title: const Text(
            'Contacts',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.black),
          ],
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/IMG_8788.jpg'),
              ),
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Abena',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            const Text(
              'Accra,Ghana',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            ListTile(
              title:
                  const Text('Mobile', style: TextStyle(color: Colors.black)),
              subtitle: const Text('+233 85 09 43 123'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.call))
                ],
              ),
            ),
            const ListTile(
                title: Text('Email'),
                subtitle: Text('priscyblinks@gmail.com'),
                trailing: Icon(
                  Icons.mail_outline,
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Linked Accounts',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Text('WhatsApp'),
              trailing: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons8-whatsapp-48.png'),
              ),
            ),
            const ListTile(
              leading: Text('Twitter'),
              trailing: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons8-twitter-48.png'),
              ),
            ),
            const ListTile(
              leading: Text('Instagram'),
              trailing: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons8-instagram-48.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'More options',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Text('Share Contact'),
            ),
            const ListTile(
              leading: Text('QR Code'),
            ),
            const ListTile(
              leading: Text('Delete Contact'),
            ),
          ],
        ));
  }
}
