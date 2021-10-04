import "package:flutter/material.dart";
import 'package:valid/tasks/views/components/tasks_header.dart';

class TasksView extends StatefulWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: TasksHeader())
      ],
    );
  }
}
