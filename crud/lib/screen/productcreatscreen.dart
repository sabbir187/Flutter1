
import 'package:crud/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productcreatescreen extends StatefulWidget {


  @override
  State<productcreatescreen> createState() => _productcreatescreenState();
}

class _productcreatescreenState extends State<productcreatescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create product" )),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(onChanged: (value){},decoration: appinputdecoration('Product Name'),),
                  SizedBox(height: 20,),
                  TextFormField(onChanged: (value){},decoration: appinputdecoration('Product Code'),),
                  SizedBox(height: 20,),
                  TextFormField(onChanged: (value){},decoration: appinputdecoration('Product Image'),),
                  SizedBox(height: 20,),
                  TextFormField(onChanged: (value){},decoration: appinputdecoration('Unit Price'),),
                  SizedBox(height: 20,),
                  TextFormField(onChanged: (value){},decoration: appinputdecoration('Total Price'),),

                ],
              ) ,
            ),
          )
        ],
      ),
    );

  }
}
