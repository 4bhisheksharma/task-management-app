import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar());
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    ),
    centerTitle: true,
    backgroundColor: kWhite,
    elevation: 0,
  );
}
