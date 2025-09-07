import 'package:flutter/material.dart';
import 'package:tms/widgets/drawer.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Setting Page')),
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: Colors.black)),
      ),
      drawer: MyDrawer(),
    );
  }
}
