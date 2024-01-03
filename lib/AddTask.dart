import 'package:flutter/material.dart';
// import 'package:app/todoList.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  @override
  Widget build(BuildContext context) {
    TextEditingController taskNameController = TextEditingController();
    TextEditingController taskDescController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Add Task")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Text("Enter Task Name: "),
            SizedBox(height: 20,),
            TextFormField(
              controller: taskNameController,
              decoration: InputDecoration(
                hintText: "Get Groceries",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
            SizedBox(height: 40,),

            // Text("Enter Task Description: "),
            // SizedBox(height: 20,),
            // TextFormField(
            //   controller: taskDescController,
            //   decoration: InputDecoration(
            //     hintText: "vegetables, fruits and milk...",
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8)
            //     )
            //   ),
            // ),
            // SizedBox(height: 40),

            TextButton(onPressed: (){
              final todoListData = taskNameController.text;

              // todoList.add(todoListData);
            }, child: Text("Add Task"))

          ],
        ),
      )
    );
  }
}