import 'package:flutter/material.dart';

class CheckBoxFrame extends StatefulWidget {
  const CheckBoxFrame({Key? key}) : super(key: key);

  @override
  _CheckBoxFrameState createState() => _CheckBoxFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _CheckBoxFrameState extends State<CheckBoxFrame> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
    );
  }
}
