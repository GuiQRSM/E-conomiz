import 'package:flutter/material.dart';

class SwitchFrame extends StatefulWidget {
  const SwitchFrame({Key? key}) : super(key: key);

  @override
  _SwitchFrameState createState() => _SwitchFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _SwitchFrameState extends State<SwitchFrame> {

  var _choiseKey = false;
  var _choiseKey2 = false;
  var _choiseKey3 = false;
  var _choiseKey4 = false;
  var _textDinamic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: <Widget>[
           Padding(
               padding: EdgeInsets.only(bottom: 14),
           child:  Text("Configurações gerais",
             style: TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.w500,
               color: primeColor,
             ),),
           ),
            SwitchListTile(
                title: Text("Permitir alertas de ofertas.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: primeColor
                ),),
                activeColor: primeColor,
                secondary: Icon(Icons.add_alert,
                color: primeColor,),
                value: _choiseKey,
                onChanged: (bool? vlr1){
                  setState(() {
                    _choiseKey = vlr1!;
                  });
                },
            ),
            SwitchListTile(
                title: Text("Sincronizar com sua conta Google.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: primeColor
                ),),
                activeColor: primeColor,
                secondary: Icon(Icons.account_circle,
                color: primeColor,),
                value: _choiseKey2,
                onChanged: (bool? vlr2){
                  setState(() {
                    _choiseKey2 = vlr2!;
                  });
                },
            ),
            SwitchListTile(
                 title: Text("Permitir acesso a aplicativos de corrida.",
                 style: TextStyle(
                     fontWeight: FontWeight.w600,
                     color: primeColor
                 ),),
                activeColor: primeColor,
                secondary: Icon(Icons.local_taxi,
                color: primeColor,),
                value: _choiseKey3,
                onChanged: (bool? vlr3){
                   setState(() {
                     _choiseKey3 = vlr3!;
                   });
                },
            ),
            SwitchListTile(
                title: Text("Ativar modo Dark.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                ),),
                activeColor: primeColor,
                secondary: Icon(Icons.dark_mode,
                color: primeColor,),
                value: _choiseKey4,
                onChanged: (bool? vlr4){
                  setState(() {
                    _choiseKey4 = vlr4!;
                  });
                },
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
            child:  RaisedButton(
              padding: EdgeInsets.all(14),
              onPressed: (){
                setState(() {
                  _textDinamic = "Ativação do Switch 1: $_choiseKey\n"
                                 "Ativação do Switch 2: $_choiseKey2\n"
                                 "Ativação do Switch 2: $_choiseKey3\n"
                                 "Ativação do Switch 2: $_choiseKey4\n";
                });
              },
              child: Text("Salvar",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),),
              color: primeColor,
            ),),
            Padding(
              padding: EdgeInsets.only(top: 20),
            child:  Text(
                "$_textDinamic",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
