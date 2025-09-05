import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tms/models/task_model.dart';
import 'package:tms/themes/constant.dart';

class TasksWidgets extends StatelessWidget {
  final taskList = Task.generateTasks();
  TasksWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: taskList.length,
        itemBuilder: (context, index) => taskList[index].isLast == true
            ? _buildAddTask()
            : _buildTask(context, taskList[index]),
      ),
    );
  }
}

Widget _buildAddTask() {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(20),
    color: Colors.grey.shade600,
    dashPattern: [10, 10],
    strokeWidth: 2,
    child: Center(
      child: Icon(Icons.add, size: 30, color: Colors.grey.shade600),
    ),
  );
}

Widget _buildTask(BuildContext context, taskList) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: taskList.bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(taskList.icon, size: 30, color: taskList.iconColor),

        SizedBox(height: 10),
        Text(
          taskList.title.toString(),
          style: TextStyle(
            color: kDark,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Text(
          taskList.description,
          style: TextStyle(color: kDark, fontSize: 14),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${taskList.left} Left',
              style: TextStyle(
                color: kDark,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '${taskList.done} Done',
                style: TextStyle(
                  color: kDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
