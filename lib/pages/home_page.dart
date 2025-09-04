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
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/profile.png', fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Hello, Ram',
          style: TextStyle(
            color: kDark,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert, color: kDark, size: 30),
      ),
      SizedBox(width: 10),
    ],
    centerTitle: true,
    backgroundColor: kWhite,
    elevation: 0,
  );
}
