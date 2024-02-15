import 'package:advanced/models/task_data.dart';
import 'package:advanced/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkBoxChange:(newValue){
            // setState(() {
            //   widget.tasks[index].doneChanged();
            // });
          }
        );
      },
    );
  }
}
