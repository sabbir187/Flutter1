import 'package:crud/screen/productcreatscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUDE App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),

      ),
      home: productcreatescreen(),
    );
  }
}

