import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,

        title:  Text('first app'),

      ),
      body: Column(
        children: [
          Text('gfghg'),

          Center(
            child: Text(
                'hello world',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),

            ),
          ),
        ],
      ),
    ),

  ));
}