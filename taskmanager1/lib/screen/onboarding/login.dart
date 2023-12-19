import 'package:flutter/material.dart';

import '../../style/style.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(

        children: [
          Background(context),
         Container(
           padding: EdgeInsets.all(30),
           child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Login", style: Head1Text(colordarkblue),),

               SizedBox(height: 1.2,),
               Text("Fill up the form to login your account ", style: Head6Text(colorgray),),
               SizedBox(height: 12,),
               TextFormField(decoration: AppInputDecoration("Email Address") ,),
               SizedBox(height: 20,),
               TextFormField(decoration: AppInputDecoration("Password") ,),
               SizedBox(height: 20,),
               Container(
                 child: ElevatedButton(
                   style:  AppButtonStyle(),
                   onPressed: () {  },
                   child: PrimaryButton('Login'),
                 ),
               )

             ],

           ),
         )
        ],
      ),
    );
  }
}
