import 'package:app/AddTask.dart';
import 'package:app/FirstScreen.dart';
import 'package:app/LoginScreen.dart';
import 'package:app/SecondScreen.dart';
import 'package:app/StateList.dart';
import 'package:app/splashScreen.dart';
import 'package:app/todoList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes : {
				"/login":(context) => LoginScreen(),
        "/first":(context) => FirstScreen(),
        "/second":(context) => SecondScreen(),
        "/state":(context) => StateList(),
        "/splash":(context) => SplashScreen(),
        "/todo":(context) => TodoList(),
        "/addtask":(context) => AddTask()
			},
			initialRoute: "/todo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Muqabil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}