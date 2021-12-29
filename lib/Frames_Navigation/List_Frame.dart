import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Lista",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: primeColor,
          ),
        ),
      ),
    );
  }
}
