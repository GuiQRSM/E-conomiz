import 'package:flutter/material.dart';
import 'dart:math';

class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _HomeStateFulState extends State<HomeStateFul> {

  var _content = [
    "Pesquise preços sem sair de casa!",
    "Monte sua lista de compras direto no app.",
    "Atualização de preços, da sua lista automatica!",
    "Compartilhe os melhores preços."
  ];

  var _text = "";

  TextEditingController _controllerFirst = TextEditingController();
  TextEditingController _controllerSecond= TextEditingController();

  void calcPrice()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  "imagens/E-conomiz.png",
                  height: 120,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Balanço de preços",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço primário, ex 2.50",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: primeColor,
                ),
                controller: _controllerFirst,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço secundário, ex 2.50",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),
                ),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: primeColor,
                ),
                controller: _controllerSecond,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child:RaisedButton(
                  onPressed: (){},
                  padding: EdgeInsets.all(16),
                  color: primeColor,
                  textColor: Colors.white,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),),
              Padding(
                padding: EdgeInsets.only(top: 20),
              child: Text(
                  "$_text",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: primeColor,
              ),),)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: primeColor,
        child: Padding(
          padding: EdgeInsets.all(16),
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
