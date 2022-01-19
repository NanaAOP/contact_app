import 'package:contact_app/contactpage.dart';
import 'package:contact_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Contact App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, s}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'My Contacts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(const Profile());
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/IMG_8788.jpg'),
            ),
          )
        ],
        //elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Search by name or number',
                  labelStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.search),
                ),
              )
            ],
          ),
        ),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Recents'),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactPage()),
                      );
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage:
                                            AssetImage('assets/IMG_6319.JPG'),
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
                                      'Isabella Dizzy',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 78 89 67 777'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('iszyybrezzy@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/IMG_6319.JPG'),
                      ),
                      title: const Text('Isabella Dizzy'),
                      subtitle: const Text('+233 78 89 67 777'),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage:
                                            AssetImage('assets/IMG_3815.JPG'),
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
                                      'Evans Quainoo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 78 98 99 879'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('evquainoo@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/IMG_3815.JPG'),
                      ),
                      title: const Text('Evans Quainoo'),
                      subtitle: const Text('+233 78 98 99 879'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage:
                                            AssetImage('assets/IMG_6937.JPG'),
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
                                      'Ruthie Boo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 98 09 87 678'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('rzoeboo@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/IMG_6937.JPG'),
                      ),
                      title: const Text('Ruthie Boo'),
                      subtitle: const Text('+233 98 09 87 678'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('Contacts'),
                    trailing: Text('A'),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage: AssetImage(
                                            'assets/Kontrast Images-9671.jpg'),
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
                                      'James Adu',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 55 54 90 879'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('jaduu789@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/Kontrast Images-9671.jpg'),
                      ),
                      title: const Text('James Adu'),
                      subtitle: const Text('+233 55 54 90 879'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage: AssetImage(
                                            'assets/Kontrast Images-9676.jpg'),
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
                                      'Drake Addo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 98 78 88 900'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('drakeaoo9@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/Kontrast Images-9676.jpg'),
                      ),
                      title: const Text('Drake Addo'),
                      subtitle: const Text('+233 98 78 88 900 '),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage:
                                            AssetImage('assets/Fido.jpg'),
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
                                      'Hannam Benson',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 89 76 87 659'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('hannamb89@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/Fido.jpg'),
                      ),
                      title: const Text('Hannam Benson'),
                      subtitle: const Text('+233 89 76 87 659'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showBarModalBottomSheet(
                          context: context,
                          builder: (context) {
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
                                        backgroundImage: AssetImage(
                                            'assets/Kontrast Images-9687.jpg'),
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
                                      'Kate Car',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                    const Text(
                                      'Accra,Ghana',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    ListTile(
                                      title: const Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      subtitle: const Text('+233 89 98 98 980'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.call))
                                        ],
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text('Email'),
                                        subtitle: Text('katcarr67@gmail.com'),
                                        trailing: Icon(
                                          Icons.mail_outline,
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Linked Accounts',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('WhatsApp'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-whatsapp-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Twitter'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-twitter-48.png'),
                                      ),
                                    ),
                                    const ListTile(
                                      leading: Text('Instagram'),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/icons8-instagram-48.png'),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'More options',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                            ;
                          });
                    },
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/Kontrast Images-9687.jpg'),
                      ),
                      title: const Text('Kate Car'),
                      subtitle: const Text('+233 89 98 98 980'),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
