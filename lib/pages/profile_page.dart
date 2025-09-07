import 'package:flutter/material.dart';
import 'package:tms/widgets/drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Profile Page')),
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
      ),
      drawer: MyDrawer(),
    );
  }
}
