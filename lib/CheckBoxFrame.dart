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
      //body: ,
      bottomNavigationBar: BottomAppBar(
        color: primeColor,
        child: Padding(
          padding: EdgeInsets.all(13),
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
    );
  }
}
