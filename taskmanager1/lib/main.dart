 import 'package:flutter/material.dart';
import 'package:taskmanager1/screen/onboarding/emailverify.dart';
import 'package:taskmanager1/screen/onboarding/login.dart';
import 'package:taskmanager1/screen/onboarding/pinverify.dart';
import 'package:taskmanager1/screen/onboarding/registration.dart';
import 'package:taskmanager1/screen/onboarding/setpassword.dart';
import 'package:taskmanager1/screen/onboarding/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Task ',
  initialRoute: '/pinverify',
      routes: {
    '/':(context)=> splashscreen(),
        '/login':(context)=> login(),
        '/registration':(context)=> registration(),
        '/pinverify':(context)=> pinverify(),
        '/':(context)=> splashscreen(),
        '/emailverify':(context)=> emailverify(),
        '/setpassword':(context)=> setpassword(),
    },
    );
  }
}

