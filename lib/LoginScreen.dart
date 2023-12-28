import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
			body: Container(
				color: Color.fromARGB(255, 255, 235, 164),
				width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              color: Colors.blue,
              width: 300,
              height: 100
            ),
            Container(
              color: Colors.orange,
              width: 300,
              height: 100
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  width: 120,
                  height: 100
                ),
                Container(
                  color: Colors.brown,
                  width: 120,
                  height: 100
                ),
              ],
            )
          ]
        )
			),
    );
  }
}