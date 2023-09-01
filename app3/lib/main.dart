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
  body: Center(
    child: CircularProgressIndicator(
      color: Color.fromRGBO(27, 232, 124, 1),
    ),
  )

 /* Center(
    child: Card(
      color: Color.fromRGBO(44, 224, 76, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      shadowColor: Color.fromRGBO(200, 57, 32, 1),
      elevation: 156,
      child: SizedBox(
        height: 200,
        width: 200,
        child: Center (child: Text("add card"),),
      ),
    ),

  )*/

    //navigation and passing data
/*  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity1('Home to activity1')));
      }, child: Text('Go Activity1')),
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>activity2("Home to activity1")));
      }, child: Text('Go Activity2'))
    ],
  )*/
);
  }

}


/*class activity1 extends StatelessWidget{
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

}*/