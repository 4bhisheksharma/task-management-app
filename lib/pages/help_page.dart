import 'package:flutter/material.dart';
import 'package:tms/widgets/drawer.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Help Page')),
      appBar: AppBar(
        title: const Text(
          'Help & Support',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
