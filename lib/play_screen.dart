import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Playscreen extends StatefulWidget {
  const Playscreen({Key? key}) : super(key: key);

  @override
  State<Playscreen> createState() => _PlayscreenState();
}

class _PlayscreenState extends State<Playscreen> {
  int number = 0;
  String name = "Parinya ";

  void increments(){
    setState(() {
      number +=1;
    });
    
    
  }

  void decrements(){
    setState(() {
      number -=1;
    });
    
}
  void changename(String newname){
    setState(() {
      name = newname;
  });
 

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlayScreen"),
      ),
      body: Container(
        child:  
        Column(
          children: [
            Text("ค่าปัจจุบัน : ${number}"),
            Text("ชื่อ : ${name}"),
            Text("ค่าปัจจุบัน : ${number}"),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: increments,
                  child: Text("เพิ่มค่า"), 
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  onPressed: (){changename("Parinya คนชอบหี อ่าส์เงี่ยน");},
                  child: Text("ชื่อ"), 
                  ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                    ),
                  onPressed: decrements,
                  child: Text("ลดค่า"), 
                  ),
                 
            ],),
          ],
        ),
      ),
    );
  }
}
