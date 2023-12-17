import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const colorRed =Color.fromRGBO(231, 28, 36, 1);
const colordeepkred =Color.fromRGBO(136, 28, 32, 1);
const colorgreen =Color.fromRGBO(33, 191, 105, 1);
const colorblue =Color.fromRGBO(52, 70, 220, 1.0);
const colororange=Color.fromRGBO(230, 126, 34, 1);
const colorwhite =Color.fromRGBO(255, 255, 255, 1);
const colordarkblue =Color.fromRGBO(44, 62, 80, 1);
const colorgray =Color.fromRGBO(135, 142, 150, 1);
const colorlight =Color.fromRGBO(211, 211, 211, 1);

 TextStyle Head1Text(textcolor){
   return TextStyle(
     color: textcolor,
     fontSize: 28,
     fontFamily: 'poppins',
     fontWeight: FontWeight.w700,
   );
 }

TextStyle Head6Text(textcolor){
  return TextStyle(
    color: textcolor,
    fontSize: 17,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  );
}

InputDecoration AppInputDecoration(label){
   return InputDecoration(
     focusedBorder: const OutlineInputBorder(
       borderSide: const BorderSide(color: colorgreen,width: 1),

     ),
         fillColor: colorwhite,
     filled: true,
     contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
     enabledBorder: OutlineInputBorder(
       borderSide: const BorderSide(color: colorwhite,width:0.0),

     ),
     border: OutlineInputBorder(),
     labelText: label,
   );
}


DecoratedBox AppDropDownStyle(child){
   return DecoratedBox(
       decoration: BoxDecoration(color: colorwhite,border: Border.all(color: colorwhite,width:1),borderRadius: BorderRadius.circular(4),),
     child: Padding(
       padding: EdgeInsets.only(left: 30,right: 30),
       child: child,
     ),
   );
}

SvgPicture Background(context){
   return SvgPicture.asset(
       'assets/image/back.svg',
           alignment: Alignment.center,
     width:  MediaQuery.of(context).size.width,
     height:  MediaQuery.of(context).size.height,
     fit: BoxFit.cover,
   );
}






