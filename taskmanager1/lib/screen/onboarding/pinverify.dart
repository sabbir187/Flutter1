import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../style/style.dart';
class pinverify extends StatefulWidget {
  const pinverify({super.key});

  @override
  State<pinverify> createState() => _pinverifyState();
}

class _pinverifyState extends State<pinverify> {
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
                Text("Pin Verification", style: Head1Text(colordarkblue),),

                SizedBox(height: 1.2,),
                Text("A 6 digit pin hase been send to your Phone number ", style: Head6Text(colorgray),),
                SizedBox(height: 20,),
                PinCodeTextField(
                    appContext: context,
                    length: 6,
                  pinTheme: AppOTPstyle(),
                  animationType: AnimationType.slide,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v){

                  },
                  onChanged: (value){

                  },
                ),

                Container(
                  child: ElevatedButton(
                    style:  AppButtonStyle(),
                    onPressed: () {  },
                    child: PrimaryButton('verify'),
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
