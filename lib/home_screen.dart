import 'package:flutter/material.dart';
import 'package:pop1122/about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Parinya Yartsomboon";
  int age = 12;

  bool lookinggood = true;
  List<String> myDongnames = ["loongtoo", "paveena", "mike", "Pravit"];
  Map<String, dynamic> user = {
    "id": 1,
    "name": "John Olsen",
    "sex": "male",
    "married": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return AboutScreen();
                },
              ),
            )
          },
          child: Text("Go to about screen"),
        ),
      ),
    );
  }
}
