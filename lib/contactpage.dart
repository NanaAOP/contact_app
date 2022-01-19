import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
            child: const Icon(
              UniconsLine.user_circle,
              size: 150,
              color: Colors.grey,
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
            'Name',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          const Text(
            'Location',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          ListTile(
            title: const Text('Mobile', style: TextStyle(color: Colors.black)),
            subtitle: const Text('Enter mobile number'),
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
              subtitle: Text('Enter your email'),
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
            leading: Text('Account'),
          ),
          const ListTile(
            leading: Text('Account'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'More Options',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Notes'),
          )
        ],
        
      ),
    );
  }
}
