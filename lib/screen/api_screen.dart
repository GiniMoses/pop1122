import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({Key? key}) : super(key: key);

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  

  List<String> thaifood = [
    "Somtum",
    "kawpad",
    "kaitod",
    "kangkeawwarn",
    "yumtale",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thai food"),
      ),
      body: ListView.builder(
        itemCount: thaifood.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              
              title: Text(
                thaifood[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
