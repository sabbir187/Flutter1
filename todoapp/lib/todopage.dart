import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/style.dart';

class todopage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return todopageUI();
  }

}
class todopageUI extends State<todopage>{

  List todolist=[];
  String item="";


  appinputonchange(content){
    setState(() {
  item=content;
    });

  }

  additem(){
    setState(() {
todolist.add({'item':item});
    });
  }

  removeitem(index){
    setState(() {
      todolist.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('To Do'),),
     body: Container(
       padding: EdgeInsets.all(20),
       child: Column(
         children: [
           Expanded(

             flex: 10,
               child: Row(
                 children: [
                   Expanded(
                     flex: 60,
                     child: TextFormField(onChanged: (content){appinputonchange(content);}, decoration: appinputdecoration("List Item"),
                       cursorColor: Colors.red,
                     ),
                   ),
                   Expanded(
                     flex: 30,
                       child: Padding(padding: EdgeInsets.only(left: 6),
                           child: ElevatedButton(onPressed: (){  additem();},child:  Text('add'),style: appbuttonstyle(),)),
                   )
                 ],
               )
           ),
          Expanded(
             flex: 90,
               child: ListView.builder(
                 itemCount: todolist.length,
                   itemBuilder: (context,index){
                   return Card(

                     color: Colors.white70,
                     child: sizebox50(
                       Row(
                         children: [
                           Expanded(
                             flex: 80,
                             child: Text(todolist[index]["item"].toString())
                           ),
                           Expanded(
                               flex: 20,
                               child: TextButton(onPressed: (){removeitem(index);},child: Icon(Icons.delete,))
                           )

                         ],
                       )
                     ),

                   );
                   }
          ),
          )
         ],

         
       ),
     ),
   );
  }

}