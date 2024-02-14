import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Go shopping",
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null)),
      trailing: TaskCheckBox(isChecked, (bool? newVal){
        setState(() {
          isChecked = newVal!;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;
  final Function(bool?) checkBoxChange;
  const TaskCheckBox(this.checkBoxState, this.checkBoxChange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checkBoxState,
      onChanged: checkBoxChange,
    );
  }
}
