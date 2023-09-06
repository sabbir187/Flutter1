
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';

main(){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(title:"sumapp",home: homepage(),);
  }

}

class homepage extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
return homepageview();
  }
}
class homepageview extends State<homepage>{

  Map<String, double> formvalue={"nam1":0,"nam2":0};
double sum=0;
  @override
  Widget build(BuildContext context) {

    myonchange(inputkey, inputvalue){
     setState(() {
       formvalue.update(inputkey, (value) =>double.parse(inputvalue), );
     });
    }

    Addall(){
      setState(() {
       sum=formvalue['nam1']! + formvalue['nam2']!;
print(sum);
      });
    }


  return Scaffold(
    appBar: AppBar(title: Text('SumApp'),),
    body: Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(sum.toString(),style:headingtext(),),
       TextFormField(onChanged:(value){
         myonchange("nam1",value);
       },decoration: appstyle('First Name'),),
        SizedBox(height: 20,),
        TextFormField(onChanged:(value){
          myonchange("nam2",value);
        },decoration: appstyle('Last Name'),),
          SizedBox(height: 20,),
        Container(
          width: double.infinity,
          child: ElevatedButton(
          style:buttonStyle(),

          child: Text('add'),


          onPressed: (){
            Addall();
          },
        ),)
        ],
      ),
    ),
  );
  }
  
}
