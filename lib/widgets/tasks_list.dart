import 'package:advanced/widgets/task_tile.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "go to sleep"),
    Task(name: "go to university"),
    Task(name: "pay gifts"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
