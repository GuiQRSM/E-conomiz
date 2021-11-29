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
            )
          ],
        ),
      ),
    );
  }
}
