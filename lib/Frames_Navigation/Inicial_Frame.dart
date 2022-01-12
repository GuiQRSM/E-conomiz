import 'package:economiz/Inicial_Content/CheckBoxFrame.dart';
import 'package:economiz/Inicial_Content/ReceiverList_Frame.dart';
import 'package:economiz/Inicial_Content/SwitchFrame.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _HomeStateFulState extends State<HomeStateFul> {

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

  void _imageFrame (){

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CheckBoxFrame(),
        ),
    );

  }

 @override
  void initState() {
    super.initState();
    print("Primeiro método: initState().");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Segundo método: didChangeDependencies().");
  }

  @override
  void didUpdateWidget(covariant HomeStateFul oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Funciona entre o segundo e o terceiro método: didUpdateWidget(covariant HomeStateFul oldWidget).");
  }

  @override
  Widget build(BuildContext context) {

    print("Terceiro método:  build(BuildContext context).");

    return Scaffold(
      backgroundColor: supportingColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: GestureDetector(
                  onTap: _imageFrame,
                  child:  Image.asset(
                    "imagens/E-conomiz.png",
                    height: 120,),
                ),
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
                padding: EdgeInsets.only( top: 10),
                child:RaisedButton(
                  onPressed: _calcPrice,
                  padding: EdgeInsets.all(16),
                  color: primeColor,
                  textColor: supportingColor,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "$_text",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),),
              Padding(
                  padding: EdgeInsets.only(top: 10,),
                child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwitchFrame(info: '(Settings)',),
                        ),
                      );
                    },
                  padding: EdgeInsets.all(16),
                  color: primeColor,
                  textColor: supportingColor,
                  child: Text(
                      "Configurações Gerais",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
              //BOTAO PARA ACIONAR A TELA QUE EXIBE UMA LISTA QUE CARREGA DADOS DE UMA API\\
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReceiverList(),
                        ),
                    );
                  },
                  padding: EdgeInsets.all(16),
                  color: primeColor,
                  textColor: supportingColor,
                  child: Text(
                    "Lista de dados da Web",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    print("Quarto método: dispose().");

  }
}
