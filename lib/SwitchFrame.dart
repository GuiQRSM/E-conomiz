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
                title: Text("Permitir alertas de ofertas",
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
                title: Text("Sincronizar com sua conta Google",
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
          ],
        ),
      ),
    );
  }
}
