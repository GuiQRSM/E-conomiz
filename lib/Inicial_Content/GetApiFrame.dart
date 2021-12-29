import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetApiFrame extends StatefulWidget {

  String getInfo;
  GetApiFrame({required this.getInfo});

  @override
  _GetApiFrameState createState() => _GetApiFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _GetApiFrameState extends State<GetApiFrame> {

  TextEditingController _controllerCEP = TextEditingController();

  var receptorText = "";
  var _dinamicText = "";

  void _ApiData () async {

    http.Response response;
    var cep = _controllerCEP.text;
    var url = Uri.parse("https://viacep.com.br/ws/${cep}/json/");

    response = await http.get(url);
    Map<String, dynamic> data = json.decode(response.body);
    String logradouro = data["logradouro"];
    String bairro = data["bairro"];
    String localidade = data["localidade"];
    String uf = data["uf"];
    String ibge = data["ibge"];
    String ddd = data["ddd"];

    setState(() {
      _dinamicText = "Logradouro: ${logradouro}\n"
                     "Bairro: ${bairro}\n"
                     "Localidade: ${localidade}\n"
                     "UF: ${uf}\n"
                     "IBGE: ${ibge}\n"
                     "DDD: ${ddd}";
    });

    _cleanField();

  }

  void _cleanField() {

    _controllerCEP.text = "";

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        child:SingleChildScrollView(
          padding: EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    hintText: "Insira a numeração de CEP.",
                    hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: primeColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primeColor),
                    ),
                  ),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: primeColor,
                      letterSpacing: 3,
                  ),
                  cursorColor: primeColor,
                  maxLength: 8,
                  maxLengthEnforced: true,
                  controller: _controllerCEP,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top:7),
                child: RaisedButton(
                  padding: EdgeInsets.all(14),
                    onPressed: _ApiData,
                  color: primeColor,
                  child: Text(
                    "Verificar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: supportingColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 22),
                child: Text(
                  "$_dinamicText",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: primeColor,
                  ),
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
