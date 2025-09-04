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
      Task(
        title: 'Design Meeting',
        description: 'Discuss UI/UX designs',
        bgColor: kBlue,
        icon: Icons.person_2_rounded,
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
        isLast: false,
      ),
    ];
  }
}
