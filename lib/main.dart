import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData(primaryColor: Color(0xff075e54),
       primaryColorLight: Color(0xff08d261)
       ),
       home: HomeScreen(),

     );
  
  }
}

