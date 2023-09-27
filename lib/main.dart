// import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.deepPurpleAccent,Color.fromARGB(255, 64, 255, 140)),
      ),
    ),
  );
//const optimise runtime perfomance
//format document afer , after bracket
//Text only knows String
}
