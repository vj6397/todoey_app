import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/Screens/Tasks_screen.dart';
import 'package:todoey_app/modules/Task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
