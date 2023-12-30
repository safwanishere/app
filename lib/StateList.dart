import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StateList extends StatelessWidget {
  StateList({super.key});

  List<String> states = ["Andhra Pradesh",
                "Arunachal Pradesh",
                "Assam",
                "Bihar",
                "Chhattisgarh",
                "Goa",
                "Gujarat",
                "Haryana",
                "Himachal Pradesh",
                "Jammu and Kashmir",
                "Jharkhand",
                "Karnataka",
                "Kerala",
                "Madhya Pradesh",
                "Maharashtra",
                "Manipur",
                "Meghalaya",
                "Mizoram",
                "Nagaland",
                "Odisha",
                "Punjab",
                "Rajasthan",
                "Sikkim",
                "Tamil Nadu",
                "Telangana",
                "Tripura",
                "Uttarakhand",
                "Uttar Pradesh",
                "West Bengal",
                "Andaman and Nicobar Islands",
                "Chandigarh",
                "Dadra and Nagar Haveli",
                "Daman and Diu",
                "Delhi",
                "Lakshadweep",
                "Puducherry"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("States List")),
      body: Container(
        width: MediaQuery.of(context).size.width,
				height: MediaQuery.of(context).size.height,
				child: ListView.builder(
					itemCount: states.length,
					itemBuilder: (context, index) {
						final name = states[index];
						return Card(
							child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(name, style: TextStyle(fontSize: 18),),
                            ),
						);
					},
				),
      ),
    );
  }
}