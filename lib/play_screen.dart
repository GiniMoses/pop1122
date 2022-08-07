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

  void increments(){
    number +=1;
    
  }

  void decrements(){
    number -=1;
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
            Row(
              children: [
                ElevatedButton(
                  onPressed: increments,
                  child: Text("เพิ่มค่า"), 
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  onPressed: increments,
                  child: Text("ลดค่า"), 
                  ),
                 
            ],),
          ],
        ),
      ),
    );
  }
}
