import 'package:advanced/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}


