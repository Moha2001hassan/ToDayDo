import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;

  const TaskTile({super.key, required this.isChecked, required this.taskTitle, required this.checkBoxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: const Color(0xff37657c),
          value: isChecked,
          onChanged: checkBoxChange,
        ));
  }
}
