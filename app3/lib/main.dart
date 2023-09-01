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
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity1()));
      }, child: Text('Go Activity1')),
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity2()));
      }, child: Text('Go Activity2'))
    ],
  )
);
  }

}


class activity1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity1"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homeactivity()));
            }, child: Text('Go Homeactivity')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>activity2()));
            }, child: Text('Go Activity2'))
          ],
        )
    );
  }

}


class activity2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity2"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homeactivity()));
            }, child: Text('Go Homeactivity')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>activity1()));
            }, child: Text('Go Activity1'))
          ],
        )
    );
  }

}