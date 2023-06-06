import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final bool isChecked;
  final String? title;
  final Function(bool?) callback;
  final Function() callbackLongPress;

  Items(
      {this.isChecked = false,
      this.title,
      required this.callback,
      required this.callbackLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title.toString(),
        style: TextStyle(
            fontSize: 18.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: callback,
      ),
      onLongPress: callbackLongPress,
    );
  }
}
