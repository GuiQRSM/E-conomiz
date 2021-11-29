import 'package:flutter/material.dart';

class SwitchFrame extends StatefulWidget {
  const SwitchFrame({Key? key}) : super(key: key);

  @override
  _SwitchFrameState createState() => _SwitchFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _SwitchFrameState extends State<SwitchFrame> {

  var _choiseKey = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        width: double.infinity,
        child: Column(
          children: <Widget>[
           Padding(
               padding: EdgeInsets.only(top: 14),
           child:  Text("Configurações gerais",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: primeColor,
             ),),
           ),
          ],
        ),
      ),
    );
  }
}
