import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TaskTile extends StatefulWidget {

  final String text;
  final bool checked;

  TaskTile({@required this.checked, @required this.text});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(this.widget.text),
      controlAffinity: ListTileControlAffinity.trailing,
      value: widget.checked,
      onChanged: (bool value){
        setState((){
          timeDilation = value ? 3.0 : 1.0;
        });
      },
    );
  }
}
