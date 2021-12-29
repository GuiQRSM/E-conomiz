import 'dart:ui';
import 'package:economiz/Inicial_Content/CheckBoxFrame.dart';
import 'package:economiz/Frames_Navigation/Inicial_Frame.dart';
import 'package:economiz/Inicial_Content/RadioButtonFrame.dart';
import 'package:economiz/Inicial_Content/SwitchFrame.dart';
import 'package:economiz/MainNavigation_Frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {

 runApp(
   MaterialApp(
     title: "E-conomiz",
     debugShowCheckedModeBanner: false,
     home: MainNavigation(),
   ),
 );

}

/*Scaffold(
       appBar: AppBar(
         title: Text("E-conomiz"),
         backgroundColor: primeColor,
       ),
       body: Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text(
                 "E-conomiz",
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w300,
                 color: primeColor,
               ),
             ),
             Text(
                 "Coming Soon!",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.w700,
                 color: Colors.purple,
               ),
             )
           ],
         ),
       ),
       bottomNavigationBar: BottomAppBar(
         color: primeColor,
         child: Padding(
           padding: EdgeInsets.all(16),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Text(
                   "b1",
           style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.w400,
             color: Colors.white,
           ),
               ),
               Text(
                   "b2",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ),
               ),
               Text(
                   "b3",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ),
               ),
               Text(
                   "b4",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ),
               )
             ],
           ),
         ),
       ),
     ),*/

 //CONTEUDO ORIGINAL DO body://
/*Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "E-conomiz",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: primeColor,
              ),
            ),
            Text(
              "Coming Soon!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.purple,
              ),
            )
          ],
        ),
      ),*/