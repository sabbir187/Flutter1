import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:responsive/style.dart';
import 'package:responsive_grid/responsive_grid.dart' ;

main()
{
  runApp(const myapp());
}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homeactivity(),);
  }

}
class homeactivity extends StatelessWidget{
  const homeactivity({super.key});

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(title: Text('MyApp'),),
body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: BootstrapContainer(
    fluid: true,
    children: [
BootstrapRow(
  height: 100,
  children: [
    BootstrapCol(
      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.brown,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.deepPurple,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.green,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.deepPurple,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.grey,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.black,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.yellow,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.blue,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.blueGrey,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.red,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.brown,)),
    BootstrapCol(
        sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6' ,
        child: Container(height: 100,color: Colors.deepPurple,)),

  ],
)
    ],
  ),
),


//responsive grid
     /*body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
     child:  ResponsiveGridRow(
         children: [
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.purple,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.blue,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.yellow,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.black,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.grey,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.green,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.deepPurple,

             ),
           ),
           ResponsiveGridCol(
             xl:3, lg: 3,md: 4,sm: 6,xs: 12,
             child: Container(
               height: 100,
               alignment: Alignment(0, 0),
               color: Colors.brown,

             ),
           ),

         ],
       ),
     )*/

     //Media query
     /*body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Text("Scren width",style: Headline(context),)
       ],
     ),*/

     /*body: Column( //or Row
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Expanded( flex: 3,child: Container(  color: Colors.grey,)),
         Expanded( flex: 2,child: Container(  color: Colors.blue,)),
         Expanded( flex: 2,child: Container(  color: Colors.black,)),
         Expanded( flex: 2,child: Container(  color: Colors.yellow,)),
       ],//expanded and flexible are same
     ),*/

     //scrol view
     /*body:SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row( //or column
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(height: 100,width: 100,color: Colors.orange,),
           Container(height: 100,width: 100,color: Colors.blue,),
           Container(height: 100,width: 100,color: Colors.deepPurple,),
           Container(height: 100,width: 100,color: Colors.green,),
           Container(height: 100,width: 100,color: Colors.grey,),
           Container(height: 100,width: 100,color: Colors.orange,)
         ],
       ),
     )*/

     //layout builder
     /*body: LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints){
         if(constraints.maxWidth>600){
           return Container(height: 400,width: 400,color: Colors.blue,);
         }
         else{
           return Container(height: 200,width: 200,color: Colors.orange,);
         }
       },
     ),*/


     /*body: Center(
       child: FractionallySizedBox(
         heightFactor: 0.40,
         widthFactor: 0.56,
         child: Container(
           color: Colors.blue,
         ),
       ),
     ),*/

     //aspect ratio

     /*body: Container(
       color:Colors.grey,
       height: 220,
       width:double.infinity,
       alignment: Alignment.center,
       child: AspectRatio(
           aspectRatio: 15/7,
               child: Container(
           color: Colors.blue,
       ),
       ),


     )*/

   );
  }

}