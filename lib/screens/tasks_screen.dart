import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 36),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(addTaskCallback: (newTaskTitle) {
                        // setState(() {
                        //   tasks.add(Task(name: newTaskTitle));
                        //   Navigator.pop(context);
                        // });
                      }))),
            );
          },
          // backgroundColor: Colors.indigo[400],
          backgroundColor: const Color(0xff37657c),
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      // backgroundColor: Colors.teal[400],
      backgroundColor: const Color(0xFF88a3b1),
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.playlist_add_check,
                        size: 45, color: Colors.white)),
                const SizedBox(width: 8),
                const Text(
                  "ToDayDo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "${Provider.of<TaskData>(context).tasks.length} Tasks",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
