import 'package:flutter/material.dart';

void main() {

 runApp(
   MaterialApp(
     title: "E-conomiz",
     debugShowCheckedModeBanner: false,
     home: Container(
       //color: Colors.grey,
       padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
       margin: const EdgeInsets.only(top:40),
       decoration: BoxDecoration(
         border: Border.all(width: 5, color: Colors.blueGrey)
       ),

     ),
   )
 );

}
