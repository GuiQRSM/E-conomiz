import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      body: Center(
        child: Text(
          "Buscar",
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
