import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const myclass());
}
class myclass extends StatelessWidget{
  const myclass({super.key});

  @override
  Widget build(BuildContext context) {

   return  MaterialApp(
     theme: ThemeData(primarySwatch: Colors.red),
       darkTheme: ThemeData(primarySwatch: Colors.blue),
       debugShowCheckedModeBanner: false,
       home: HomeActivity(),


   );
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  mysnackbar(massage, contex){
    ScaffoldMessenger.of(contex).showSnackBar(
      SnackBar(content: Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('myapp'),
      titleSpacing:  30,
     // centerTitle: true,
      toolbarHeight:60 ,
      toolbarOpacity:1 ,
      elevation: 30,
      backgroundColor:Colors.indigo ,
      actions: [
      IconButton(onPressed: (){mysnackbar("add comment", context);}, icon: Icon(Icons.comment)),
        IconButton(onPressed: (){mysnackbar("go to email", context);}, icon: Icon(Icons.email)),
        IconButton(onPressed: (){mysnackbar("searching", context);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){mysnackbar("go to settings", context);}, icon: Icon(Icons.settings)),
      ],

    ),


  );
  }

}