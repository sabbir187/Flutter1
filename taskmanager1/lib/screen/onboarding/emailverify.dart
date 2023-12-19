import 'package:flutter/material.dart';

import '../../style/style.dart';
class emailverify extends StatefulWidget {
  const emailverify({super.key});

  @override
  State<emailverify> createState() => _emailverifyState();
}

class _emailverifyState extends State<emailverify> {
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
                Text("Email Verification", style: Head1Text(colordarkblue),),

                SizedBox(height: 1.2,),
                Text("A 6 digit verification pin will send to your email address", style: Head6Text(colorgray),),
                SizedBox(height: 12,),
                TextFormField(decoration: AppInputDecoration("Email Address") ,),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    style:  AppButtonStyle(),
                    onPressed: () {  },
                    child: PrimaryButton('Next'),
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
