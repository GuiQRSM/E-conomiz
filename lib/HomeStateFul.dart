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

  void _calcPrice() {

    var firstPrice = double.tryParse(_controllerFirst.text);
    var secobdPrice = double.tryParse(_controllerSecond.text);

    if(firstPrice == null || secobdPrice == null){
      setState(() {
        this._text = "Operação inválida, utilize numeração decimal acima de (0) e com (.)!";
      });
    }

    var dividePrice = firstPrice! / secobdPrice!;
    if(dividePrice >= 0.7){
      setState(() {
        this._text = "Neste contexto o preço  PRIMÀRIO compensa.";
      });
    }else {
      setState(() {
        this._text =  "Neste contexto o preço  SECUNDÀRIO compensa.";
      });
    }
    _cleanFields();
  }

  void _cleanFields() {

    _controllerFirst.text = "";
    _controllerSecond.text = "";

  }

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
                padding: EdgeInsets.only( top: 5),
                child:RaisedButton(
                  onPressed: _calcPrice,
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
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
