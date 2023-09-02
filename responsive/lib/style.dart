
import 'dart:ui';
import 'package:flutter/material.dart';
TextStyle Headline(context){
  var width= MediaQuery.of(context).size.width;
  if(width<700) {
    return TextStyle(
        color: Colors.black,
        fontSize: 30
    );
  }
  else{
    return TextStyle(
        color: Colors.blue,
        fontSize: 60
    );

  }
}