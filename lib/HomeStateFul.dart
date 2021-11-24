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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset(
                  "imagens/E-conomiz.png",
              height: 120,),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                  "Faça seu pré-registro!",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: primeColor,
              ),),
            ),
            RaisedButton(
              onPressed: (){},
              color: primeColor,
              child: Text(
                "Clique Aqui!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
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
