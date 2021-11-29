import 'package:flutter/material.dart';

class SwitchFrame extends StatefulWidget {
  const SwitchFrame({Key? key}) : super(key: key);

  @override
  _SwitchFrameState createState() => _SwitchFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _SwitchFrameState extends State<SwitchFrame> {

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

          ],
        ),
      ),
    );
  }
}
