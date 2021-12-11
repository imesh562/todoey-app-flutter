import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onSubmitText;
  AddTaskScreen({required this.onSubmitText});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0XFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                cursorColor: Colors.lightBlueAccent,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  if (newTaskTitle != null) {
                    onSubmitText(newTaskTitle);
                  }
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
