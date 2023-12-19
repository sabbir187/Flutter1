import 'package:flutter/material.dart';

import '../../style/style.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
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
                Text("Get Start With", style: Head1Text(colordarkblue),),


                SizedBox(height: 12,),
                TextFormField(decoration: AppInputDecoration("Email Address") ,),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("First Name ") ,),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Last Name") ,),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Phone Number ") ,),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Password") ,),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    style:  AppButtonStyle(),

                    child: PrimaryButton('Registration'),
                    onPressed: () {  },
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

