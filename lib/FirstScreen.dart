import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(child: const Text("open second!"), onPressed: () {Navigator.pushNamed(context, "/second");}),
          TextButton(child: const Text("open states page!"), onPressed: () {Navigator.pushNamed(context, "/state");})
        ]),
      ),
    );
  }
}