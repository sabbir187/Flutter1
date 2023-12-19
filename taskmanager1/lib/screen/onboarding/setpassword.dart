import 'package:flutter/material.dart';

import '../../style/style.dart';
class setpassword extends StatefulWidget {
  const setpassword({super.key});

  @override
  State<setpassword> createState() => _setpasswordState();
}

class _setpasswordState extends State<setpassword> {
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
                Text("Set Password", style: Head1Text(colordarkblue),),

                SizedBox(height: 1.2,),
                Text("Minimuim length password 8 character with letter and number combination ", style: Head6Text(colorgray),),
                SizedBox(height: 12,),
                TextFormField(decoration: AppInputDecoration("Password") ,),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Confirm Password") ,),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    style:  AppButtonStyle(),
                    onPressed: () {  },
                    child: PrimaryButton('confirm'),
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
