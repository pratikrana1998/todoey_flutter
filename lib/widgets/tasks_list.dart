import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Butter'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    },
    itemCount: tasks.length,
    );
  }
}