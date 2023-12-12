import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "My App",
    home: Homepage(),
  );
  }

}
class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomepageUI();
  }

}
class HomepageUI extends State<Homepage>{

  int countingNumber=0;

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: Text("Counter App"),),
  body: Center(
   child: Text(countingNumber.toString()),
  ),
    floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add_circle,color: Colors.red,),
    onPressed: (){
      setState(() {
        countingNumber=countingNumber+1;
      });

    },

),
);
  }

}