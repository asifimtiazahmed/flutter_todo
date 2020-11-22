import 'package:flutter/material.dart';
import 'file:///C:/Users/14379/AndroidStudioProjects/todoey_flutter_app/lib/widgets/task_tile.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list, size: 40.0, color: Colors.lightBlueAccent),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0),
                  Text('Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0,
                  ),),
                  Text('12 tasks',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
              child:ListView(
                children: [
                  TaskTile(checked: false, text: 'First checkbox item'),
                  TaskTile(checked: false, text: 'Second checkbox item'),
                  TaskTile(checked: false, text: 'First checkbox item'),
                  TaskTile(checked: false, text: 'Second checkbox item'),
                  TaskTile(checked: false, text: 'First checkbox item'),
                  TaskTile(checked: false, text: 'Second checkbox item'),
                  TaskTile(checked: false, text: 'First checkbox item'),
                  TaskTile(checked: false, text: 'Second checkbox item'),
                  TaskTile(checked: false, text: 'First checkbox item'),
                  TaskTile(checked: false, text: 'Second checkbox item'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
