import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(const myapp());
}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(home: (homeactivity()),);
  }

}
class homeactivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: Text("MyApp"),),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity1('Home to activity1')));
      }, child: Text('Go Activity1')),
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity2("Home to activity1")));
      }, child: Text('Go Activity2'))
    ],
  )
);
  }

}


class activity1 extends StatelessWidget{
  String msg;
   activity1(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text(msg),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>activity2('hsw')));
            }, child: Text('Go Activity2'))
          ],
        )
    );
  }

}


class activity2 extends StatelessWidget{
  String msg;
   activity2(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>activity1('h')));
            }, child: Text('Go Activity1'))
          ],
        )
    );
  }

}