import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

	bool isVisibilityOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Container(
			width: MediaQuery.of(context).size.width,
			height: MediaQuery.of(context).size.height,
			margin: EdgeInsets.all(10),
      child: Column(
        children: [
          // Profile Image
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/logo.png", height: 100, width: 100),
              const SizedBox(height: 12,),
              
              // Welcome Back text
              const Text("Welcome Back", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 12,),
              
              // Paragraph text
              					const Text("Welcome Back. Enter your credentials to access your account",
              						style: TextStyle(
              							fontSize: 14,
              							fontWeight: FontWeight.w400,
              							color: Color.fromRGBO(138, 144, 162, 1)
              					)),
              const SizedBox( height: 24 ),
              
              					// Email Input
              					const Text("Email Address", style: TextStyle(
              							fontSize: 14,
              							fontWeight: FontWeight.w400,
              							color: Colors.black
              					)),
              const SizedBox( height: 8 ),
              
              					TextFormField(
              						decoration: InputDecoration(
              							hintText: "hello@gmail.com",
              							border: OutlineInputBorder(
              								borderRadius: BorderRadius.circular(8)
              					))),
              					const SizedBox( height: 20 ),
              
              // Password Input
              					const Text("Password", style: TextStyle(
              							fontSize: 14,
              							fontWeight: FontWeight.w400,
              							color: Colors.black
              					)),
              const SizedBox( height: 8 ),
              
              					TextFormField(
                obscureText: isVisibilityOff,
              						decoration: InputDecoration(
              							hintText: "password",
                  suffixIcon: InkWell(
                    onTap: (){
                      if (isVisibilityOff){ isVisibilityOff=false; }
                      else{ isVisibilityOff = true; }
                    },
                    child: isVisibilityOff ? 
                    const Icon(Icons.visibility_off) :
                    const Icon(Icons.visibility),
                  ),
              							border: OutlineInputBorder(
              								borderRadius: BorderRadius.circular(8)
              					))),
              					const SizedBox( height: 20 ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text("Forgot Password? "),),
            ],
          ),
          const SizedBox(height: 39),

          TextButton(
            onPressed: (){},
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(89, 86, 233, 1),
                borderRadius: BorderRadius.circular(100)
              ),
              width: 280,
              height: 50,
              alignment: Alignment.center,
              child: const Text("Login", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),)
            ),
          ),
          const SizedBox( height:  24),

						// Create an account
						Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
							const Text("New Here? "),
							TextButton(onPressed: () {},
								child: Text("Create an account")
							)
						])
        ]
      )
			)
    );
  }
}