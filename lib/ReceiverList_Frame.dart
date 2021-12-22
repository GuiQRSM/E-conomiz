import 'package:economiz/Receiver_Class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ReceiverList extends StatefulWidget {
  const ReceiverList({Key? key}) : super(key: key);

  @override
  _ReceiverListState createState() => _ReceiverListState();
}

var primeColor = Color.fromARGB(255, 98, 0, 238);
var supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _ReceiverListState extends State<ReceiverList> {

  Future<List<Receiver>> _getDataList() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
