import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> todoList = ["groceries", "eggs", "milk", "chicken", "coal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
			body: Container(
				width: MediaQuery.of(context).size.width,
				height: MediaQuery.of(context).size.height,
				child: ListView.builder(
					itemCount: todoList.length,
					itemBuilder: (context, index){
						final data = todoList[index];
						return Card(
							child: Column(children: [
								Padding(padding: const EdgeInsets.all(8.0),
                    child: Text(data),
                ),
							])
						);
					}
				)
			),
			floatingActionButton: TextButton(
				onPressed: () {Navigator.pushNamed(context, "/addtask");},
				child: Icon(Icons.add))
		);
  }
}

class TodoTaskData{
	String title;
	String description;
	TodoTaskData({
		required this.title,
		required this.description
	});
}