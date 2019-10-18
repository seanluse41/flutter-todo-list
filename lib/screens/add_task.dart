import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  static String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 41.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              style: TextStyle(
                fontSize: 20.0,
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (newTaskTitle != null) {
                  Provider.of<TaskData>(context)
                      .addTask(newTaskTitle); //use method in taskdata class
                  Navigator.pop(context);
                }
              },
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
