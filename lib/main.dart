import 'dart:ui';

import 'package:flutter/material.dart';

void main() {

 runApp(
   MaterialApp(
     title: "E-conomiz",
     debugShowCheckedModeBanner: false,
     home: Container(
       //color: Colors.grey,
       padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
       margin: const EdgeInsets.only(top:40),
       decoration: BoxDecoration(
         border: Border.all(width: 5, color: Colors.blueGrey)
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: const <Widget>[
           Text(
               "E-conomiz coming soon",
             style: TextStyle(
               fontSize: 35,
               fontStyle: FontStyle.normal,
               fontWeight: FontWeight.w200,
               color: Colors.blueGrey,
               decorationStyle: TextDecorationStyle.wavy,
               decorationColor: Colors.grey,
               letterSpacing: 3,
             ),
             textAlign: TextAlign.center,
           ),
         ],
       ),
     ),
   )
 );

}
