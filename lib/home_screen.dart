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
  bool lookingGood = true;
  List<String> myDognames = ["joey", "jakson", "male", "james"];
  Map<String, dynamic> user = {
    "id": 1,
    "name": "คนชอบหี",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello $name"),
            Text("My age $age years old"),
            Text("My looking good is ${lookingGood ? "yes" : "no"}"),
            Text("My dog name is ${myDognames[1]}"),
            // ...myDognames.map((e) => Text(e)).toList(),
            Text("My friend  name is ${user["name"]}"),
            Text("She is ${user["married"] ? "married" : "no married"}"),
            ElevatedButton(
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
          ],
        ),
      ),
    );
  }
}