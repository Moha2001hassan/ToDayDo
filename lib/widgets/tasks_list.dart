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
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxChange:(newValue){
            setState(() {
              tasks[index].doneChanged();
              //isChecked = newValue;
            });
          }
        );
      },
      // children: [
      //   TaskTile(
      //     taskTitle: tasks[1].name,
      //     isChecked: tasks[1].isDone,
      //   ),
      //   TaskTile(
      //     taskTitle: tasks[2].name,
      //     isChecked: tasks[2].isDone,
      //   ),
    );
  }
}
