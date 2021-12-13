import 'package:flutter/material.dart';

class GetApiFrame extends StatefulWidget {

  String getInfo;
  GetApiFrame({required this.getInfo});

  @override
  _GetApiFrameState createState() => _GetApiFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _GetApiFrameState extends State<GetApiFrame> {

  var receptorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child:SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(

      ),
    );
  }
}
