import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  
  runApp(dede());
  
}
  class dede extends StatefulWidget{
  const dede({Key? key}) : super(key: key);

  @override
  State<dede> createState() => _dedeState();
}

class _dedeState extends State<dede> {   
  int des1 = Random().nextInt(6) + 1;
  int des2 = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context){
 
    return 
   MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text("Dédé"),
      centerTitle: true,
   ),
   body: Center(
     child: Row(children: [
      Expanded(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          onPressed: (){
          setState(() {
            des1 = Random().nextInt(6) + 1;
            des2 = Random().nextInt(6) + 1;
          });
         },
        child: Image.asset("images/dice$des1.png")),
      ),
      ),
        Expanded(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          onPressed: (){
          setState(() {
            des1 = Random().nextInt(6) + 1;
            des2 = Random().nextInt(6) + 1;
          });
         },
        child: Image.asset("images/dice$des2.png")),
      ),
      ),
     
     ],),
   ),
   ),
  );
  }
}