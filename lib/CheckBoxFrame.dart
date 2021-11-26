import 'package:flutter/material.dart';

class CheckBoxFrame extends StatefulWidget {
  const CheckBoxFrame({Key? key}) : super(key: key);

  @override
  _CheckBoxFrameState createState() => _CheckBoxFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _CheckBoxFrameState extends State<CheckBoxFrame> {

  var _textShow = "";

 var _selectedCereais = false;
 var _selectedHigiene = false;
 var _selectedBebidas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10),
            child: CheckboxListTile(value: _selectedCereais, onChanged: null),),
            Padding(padding: EdgeInsets.only(top: 10),
            child: CheckboxListTile(value: _selectedHigiene, onChanged: null),),
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
            child: CheckboxListTile(value: _selectedBebidas, onChanged: null),)
          ],
        ),
      ),
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
