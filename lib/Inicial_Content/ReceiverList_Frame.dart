import 'package:economiz/Inicial_Content/Receiver_Class.dart';
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

    List<Receiver> _listGet = [];
    for(var runner in dataJson){

      Receiver inst = Receiver(runner["userId"], runner["id"], runner["title"], runner["body"]);
      _listGet.add(inst);
      
    }

    return _listGet;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        backgroundColor: primeColor,
        title: Text(
            "Lista de dados(Web)",
        style: TextStyle(
          color: supportingColor,
        ),),
        iconTheme: IconThemeData(
          color: supportingColor,
        ),
      ),
      body: FutureBuilder<List<Receiver>>(
        future: _getDataList(),
        builder: (comtext, snapshot) {

          var widget;

          switch(snapshot.connectionState){
            case ConnectionState.waiting :
              widget = Center(
                child: CircularProgressIndicator(
                  color: primeColor,
                ),
              );
              break;
            case ConnectionState.done :
              if(snapshot.hasError){
                print("Erro ao carregar dados!");
              }else{
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index){

                    List<Receiver> items = snapshot.data!;
                    Receiver show = items[index];

                    return ListTile(
                      title: Text(
                          "Groupie: ${show.group.toString()};\n"
                        "ID: ${show.id.toString()};\n"
                        "Title: ${show.title.toString()};",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: primeColor
                        ),
                      ),
                      subtitle: Text(
                          "info: ${show.body.toString()}",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: primeColor
                      ),),
                    );

                  },
                );
              }
          }
          return widget;
        },
      ),
    );
  }
}
