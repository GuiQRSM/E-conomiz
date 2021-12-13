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
      backgroundColor: supportingColor,
      body: Container(
        width: double.infinity,
        child:SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 16),
                child: Text(
                    "${widget.getInfo}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: primeColor,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 24),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "CEP",
                    labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: primeColor,
                        letterSpacing: 3
                    ),
                  ),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: primeColor,
                      letterSpacing: 3
                  ),
                  cursorColor: primeColor,
                  maxLength: 8,
                  maxLengthEnforced: true,
                  //controller: ,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: primeColor,
        child: Padding(
          padding: EdgeInsets.all(14),
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
