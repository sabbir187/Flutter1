import 'package:flutter/material.dart';

InputDecoration  appstyle(label){

  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
    filled: true,
    fillColor: Colors.white70,
    border: OutlineInputBorder(),
    labelText: label,

  );


}

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),


  );
}