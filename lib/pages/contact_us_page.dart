import 'package:flutter/material.dart';
import 'package:tms/widgets/drawer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Contact Us Page')),
      appBar: AppBar(
        title: const Text('Contact Us', style: TextStyle(color: Colors.black)),
      ),
      drawer: const MyDrawer(),
    );
  }
}
