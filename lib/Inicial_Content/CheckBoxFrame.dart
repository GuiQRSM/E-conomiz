import 'package:flutter/material.dart';

class CheckBoxFrame extends StatefulWidget {
  const CheckBoxFrame({Key? key}) : super(key: key);

  @override
  _CheckBoxFrameState createState() => _CheckBoxFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _CheckBoxFrameState extends State<CheckBoxFrame> {

  var _textShow = "";

 var _selectedCereais = false;
 var _selectedHigiene = false;
 var _selectedBebidas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text("Categorias",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: primeColor,
              ),),
            Padding(padding: EdgeInsets.only(top: 10),
            child: CheckboxListTile(
              title: Text("Cereais",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: primeColor,
              ),),
                subtitle: Text("Milho, Trigo, Soja, Mostarda, Feijão, etc.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),),
                activeColor: primeColor,
                value: _selectedCereais,
                onChanged: (bool? vlr1){
                setState(() {
                  _selectedCereais = vlr1!;
                });
                },
             ),
            ),
            Padding(padding: EdgeInsets.only(top: 10),
            child: CheckboxListTile(
             title: Text("Higiene",
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w500,
                 color: primeColor,
               ),),
                subtitle: Text("Sabonete, Creme Dental, Papel higienico, etc.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),),
                activeColor: primeColor,
                value: _selectedHigiene,
                onChanged: (bool? vlr2){
               setState(() {
                 _selectedHigiene = vlr2!;
               });
                },
             ),
            ),
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
            child: CheckboxListTile(
              title: Text("Bebidas",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),),
                subtitle: Text("Refrigerante, Destilados, Cerveja, Energético, etc.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),),
                activeColor: primeColor,
                value: _selectedBebidas,
                onChanged: (bool? vlr3){
                setState(() {
                  _selectedBebidas = vlr3!;
                });
                },
             ),
            ),
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
            child:  RaisedButton(
              padding: EdgeInsets.all(14),
              onPressed: (){
                setState(() {
                  this._textShow = " Seleção de Cerais: $_selectedCereais\n"
                      " Seleção de higiene: $_selectedHigiene\n"
                  " Seleção de Bebidas: $_selectedBebidas";
                });
              },
              child: Text("Registrar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: supportingColor,
                ),),
              color: primeColor,
            ),),
            Padding(padding: EdgeInsets.only(top:10, bottom: 13),
            child: Text(
              "$_textShow",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primeColor,
              ),
             ),
            ),
          ],
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
