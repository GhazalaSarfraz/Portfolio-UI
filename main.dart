import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 238, 141, 112),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            CircleAvatar(
              radius: 100,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/me.jpg',
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            itemProfile('Name', 'Ghazala Sarfraz', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03150987654', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'Nankana Sahib, Punjab, Pakistan',
                CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                'Email', 'ghazalawattoo123@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            itemProfile(
                'Skills & Experties',
                ' Flutter, Dart, PHP, HTML, My Sql, Cpp',
                CupertinoIcons.desktopcomputer),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}
