import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80, left: 50, right: 50, bottom: 60),
              color: const Color.fromRGBO(218, 218, 218, 1),
              child: Image.asset("assets/nextgen.png", height: 100)
            ),
            const SizedBox(height: 30,),

            const Padding(
              padding: EdgeInsets.only(right: 80, left: 80),
              child: Text("Empowering Growth, Anytime, Anywhere", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10,),

            const Text("Your learning journey simplified", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.grey
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40,),

            TextButton(
            onPressed: (){},
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 255, 1),
                borderRadius: BorderRadius.circular(5)
              ),
              width: 450,
              height: 50,
              alignment: Alignment.center,
              child: const Text("Login", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),)
            ),
          ),
          const SizedBox(height: 20,),

          TextButton(
            onPressed: (){},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black)
              ),
              width: 450,
              height: 50,
              alignment: Alignment.center,
              child: const Text("Sign up", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),)
            ),
          ),

          ],
        ),
      ),
    );
  }
}