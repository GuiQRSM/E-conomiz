import 'package:flutter/material.dart';

class GetApiFrame extends StatefulWidget {

  String getInfo;
  GetApiFrame({required this.getInfo});

  @override
  _GetApiFrameState createState() => _GetApiFrameState();
}

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
