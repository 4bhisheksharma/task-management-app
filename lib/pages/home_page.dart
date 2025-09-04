import 'package:flutter/material.dart';
import 'package:tms/models/task_model.dart';
import 'package:tms/pages/profile_page.dart';
import 'package:tms/themes/constant.dart';
import 'package:tms/widgets/go_premium.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _pages = [HomePage(), ProfilePage()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: kLightGrey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            selectedItemColor: kBlueDark,
            unselectedItemColor: kDark,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30),
                label: 'Person',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kBlueDark,
        child: Icon(Icons.add, size: 30, color: kWhite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[selectedIndex],
    );
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
        Text('Hello, Ram', style: TextStyle(color: kDark, fontSize: 18)),
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(
            left: 8,
            right: 8,
            top: 10,
            bottom: 10,
          ),
          child: GoPremiumCard(),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "Tasks",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: kDark,
            ),
          ),
        ),
        Expanded(child: Task()),
      ],
    );
  }
}
