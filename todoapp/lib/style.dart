import 'package:flutter/material.dart';

InputDecoration appinputdecoration(label){
  return InputDecoration(
    contentPadding:EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: label,

  );
}

ButtonStyle appbuttonstyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
      shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5))
)
  );
}

SizedBox sizebox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      color: Colors.white70,
      child: child,
    ),
  );
}