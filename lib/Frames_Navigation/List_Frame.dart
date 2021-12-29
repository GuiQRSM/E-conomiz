import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _ListState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
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
