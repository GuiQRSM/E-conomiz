import 'package:flutter/material.dart';

class RadioButtonFrame extends StatefulWidget {
  const RadioButtonFrame({Key? key}) : super(key: key);

  @override
  _RadioButtonFrameState createState() => _RadioButtonFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);

class _RadioButtonFrameState extends State<RadioButtonFrame> {

  var _selcterRadio = "";

  var _textBehavior = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 13, bottom: 13),
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
               activeColor: primeColor,
               secondary: Icon(Icons.where_to_vote),
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
                activeColor: primeColor,
                secondary: Icon(Icons.where_to_vote),
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
                activeColor: primeColor,
                secondary: Icon(Icons.where_to_vote),
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
                activeColor: primeColor,
                secondary: Icon(Icons.where_to_vote),
                value: "Preço Baixo",
                groupValue: _selcterRadio,
                onChanged: (String? mrc4){
                  setState(() {
                    _selcterRadio = mrc4!;
                  });
                }
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                padding: EdgeInsets.all(14),
                onPressed: (){},
                child: Text("Salvar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
                color: primeColor,
              ),
            ),
            Text(
                "$_textBehavior",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: primeColor,
            ),),
          ],
        ),
      ),
    );
  }
}
