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

