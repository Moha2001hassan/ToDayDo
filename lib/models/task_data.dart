import 'package:advanced/models/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: "go to sleep"),
    Task(name: "go to university"),
    Task(name: "pay gifts"),
  ];
}