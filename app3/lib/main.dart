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
  const homeactivity({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: Text("MyApp"),),
);
  }

}