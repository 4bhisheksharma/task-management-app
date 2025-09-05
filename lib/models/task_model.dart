import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';

class Task {
  final String? title;
  final String? description;
  final Color? bgColor;
  final Color? iconColor;
  final Color? btnColor;
  final IconData? icon;
  final num? left;
  final num? done;
  final bool? isLast;

  Task({
    this.title,
    this.description,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.icon,
    this.left,
    this.done,
    this.isLast,
  });

  static List<Task> generateTasks() {
    return [
      Task(
        title: 'Personal Tasks',
        description: 'Here are Your Personal Tasks',
        bgColor: kRed,
        icon: Icons.person_2_rounded,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        title: 'Work Tasks',
        description: 'Here are Your Work Tasks',
        bgColor: kYellowDark,
        icon: Icons.work,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 2,
        isLast: false,
      ),
      Task(
        title: 'Health',
        description: 'Here are Your Health Tasks',
        bgColor: kGreenLight,
        icon: Icons.favorite,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 2,
        isLast: false,
      ),
      Task(
        title: 'Others',
        description: 'Here are Your Other/Extra Tasks',
        bgColor: kPurpleLight,
        icon: Icons.devices_other_rounded,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 2,
        isLast: false,
      ),
        Task(
        title: 'Design Meeting',
        description: 'Discuss UI/UX designs',
        bgColor: kBlue,
        icon: Icons.person_2_rounded,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 2,
        isLast: true,
      ),
    ];
  }
}
