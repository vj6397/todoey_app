import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/Components/List_items.dart';
import 'package:todoey_app/modules/Task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (_, TaskData, __) => ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskData.tasks[index];
          return Items(
            title: task.name,
            isChecked: task.isDone,
            callback: (checkBoxState) {
              TaskData.updateTask(task);
            },
            callbackLongPress: () {
              TaskData.deleteTask(task);
            },
          );
        },
        itemCount: TaskData.tasks.length,
      ),
    );
  }
}
