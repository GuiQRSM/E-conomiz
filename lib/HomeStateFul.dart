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

  var _text = "Test Content!";

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPhoneNumber = TextEditingController();

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
                keyboardType: TextInputType.emailAddress,
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
                controller: _controllerEmail,
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
                controller: _controllerPhoneNumber,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child:RaisedButton(
                  onPressed: (){
                    print("E-mail: " + _controllerEmail.text);
                    print("Número de telefone: " + _controllerPhoneNumber.text);
                  },
                  padding: EdgeInsets.all(16),
                  color: primeColor,
                  textColor: Colors.white,
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),),
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
