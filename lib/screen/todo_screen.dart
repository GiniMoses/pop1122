import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pop1122/config/config.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  bool isloading = false;

  var todoList = [];

  Future<void> fetchTodoList() async {
    setState(() {
      isloading = true;
    });
    http.Response response = await http.get(Uri.parse("$apiUrl/todos"));
    if (response.statusCode == 200) {
      setState(() {
        todoList.addAll(json.decode(response.body));
      });
    }
    setState(() {
      isloading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchTodoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoScreen"),
      ),
      body: isloading
          ? const Center(
              child: Text(
                "Loading ...",
                style: TextStyle(color: Colors.red),
              ),
            )
          : ListView.builder(
              itemCount: todoList.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(title: Text(todoList[index]["title"])),
                );
              }),
            ),
    );
  }
}
