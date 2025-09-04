import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';

class GoPremiumCard extends StatefulWidget {
  const GoPremiumCard({super.key});

  @override
  State<GoPremiumCard> createState() => _GoPremiumCardState();
}

class _GoPremiumCardState extends State<GoPremiumCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(height * 0.004),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(height * 0.015),
            child: Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: height * 0.05,
                  decoration: BoxDecoration(
                    color: kYellowDark,
                    borderRadius: BorderRadius.circular(height * 0.02),
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcATop,
                    ),
                    child: const Icon(
                      Icons.workspace_premium,
                      size: 30,
                      color: MyTheme.textColor,
                    ),
                  ),
                ),
                SizedBox(width: height * 0.015),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Go Premium',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    Text(
                      'Get unlimited access\nChha Paisa?',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: height * 0.017,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: kWhite, size: 25),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
