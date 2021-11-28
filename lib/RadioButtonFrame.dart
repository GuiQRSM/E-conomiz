import 'package:flutter/material.dart';

class RadioButtonFrame extends StatefulWidget {
  const RadioButtonFrame({Key? key}) : super(key: key);

  @override
  _RadioButtonFrameState createState() => _RadioButtonFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _RadioButtonFrameState extends State<RadioButtonFrame> {

  var _selcterRadio = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 13, bottom: 16),
            child: Text("Favorite seu supermecado",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: primeColor,
            ),),
            ),
           RadioListTile(
               title: Text("Líder",
               style: TextStyle(
                 fontSize: 17,
                 fontWeight: FontWeight.w500,
                 color: primeColor,
               ),),
               value: "Líder",
               groupValue: _selcterRadio,
               onChanged: (String? mrc1){
                 setState(() {
                   _selcterRadio = mrc1!;
                 });
               }
           ),
            RadioListTile(
                title: Text("Mateus",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
                value: "Mateus",
                groupValue: _selcterRadio,
                onChanged: (String? mrc2){
                  setState(() {
                    _selcterRadio = mrc2!;
                  });
                }
            ),
            RadioListTile(
                title: Text("Formosa",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
                value: "Formosa",
                groupValue: _selcterRadio,
                onChanged: (String? mrc3){
                  setState(() {
                    _selcterRadio = mrc3!;
                  });
                }
            ),
            RadioListTile(
                title: Text("Preço Baixo",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
                value: "Preço Baixo",
                groupValue: _selcterRadio,
                onChanged: (String? mrc4){
                  setState(() {
                    _selcterRadio = mrc4!;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
