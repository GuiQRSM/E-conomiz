import 'package:economiz/Receiver_Class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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

    http.Response response;
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    response = await http.get(url);

    var dataJson = json.decode(response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
