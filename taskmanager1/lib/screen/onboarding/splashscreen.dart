import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/style.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(

        children: [
          Background(context),
          Container(
            padding:  EdgeInsets.all(30),
            child: Center(
              child: SvgPicture.asset("assets/image/logo.svg", alignment: Alignment.center,),
            ),
          )
        ],
      ),
    );
  }
}
