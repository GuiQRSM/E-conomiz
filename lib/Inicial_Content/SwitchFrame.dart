import 'package:economiz/Inicial_Content/GetApiFrame.dart';
import 'package:economiz/Inicial_Content/RadioButtonFrame.dart';
import 'package:flutter/material.dart';

class SwitchFrame extends StatefulWidget {

String info;
SwitchFrame({required this.info});

  @override
  _SwitchFrameState createState() => _SwitchFrameState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _SwitchFrameState extends State<SwitchFrame> {

  var _choiseKey = false;
  var _choiseKey2 = false;
  var _choiseKey3 = false;
  var _choiseKey4 = false;
  var _textDinamic = "";

  var _evoValue = 0.0;
  var _labelEvo = "valor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        title: Text(
            "E-conomiz",
        style: TextStyle(
          color: supportingColor,
        ),),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 14),
                child:  Text("Configurações gerais\n"
                    "${widget.info}",
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
                padding: EdgeInsets.only(top:10),
                child: Text("Emissões de Promoções:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primeColor,
                ),),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                child: Slider(
                    value: _evoValue,
                    min: 0,
                    max: 14,
                    label: _labelEvo,
                    divisions: 14,
                    activeColor: primeColor,
                    inactiveColor: Colors.purple,
                    onChanged: (double? evo){
                      setState(() {
                        _evoValue = evo!;
                        _labelEvo = "Emissões de promoções: " + _evoValue.toString();
                      });
                    },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20),
                child:  RaisedButton(
                  padding: EdgeInsets.all(14),
                  onPressed: (){
                    setState(() {
                      _textDinamic = "Ativação do Switch 1: $_choiseKey\n"
                          "Ativação do Switch 2: $_choiseKey2\n"
                          "Ativação do Switch 3: $_choiseKey3\n"
                          "Ativação do Switch 4: $_choiseKey4\n"
                           "$_labelEvo";

                    });
                  },
                  child: Text("Salvar",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: supportingColor,
                    ),),
                  color: primeColor,
                ),),
              Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 2),
                child: RaisedButton(
                  padding: EdgeInsets.all(14),
                    onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RadioButtonFrame(),
                            ),
                        );
                    },
                  child: Text(
                    "Seleção de Supermecados",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: supportingColor,
                  ),),
                  color: primeColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 2),
                child: RaisedButton(
                  padding: EdgeInsets.all(14),
                    onPressed: (){
                      var infoCep = "Informe o CEP no campo de texto!";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetApiFrame(getInfo: '$infoCep',),
                        ),
                    );
                    },
                  color: primeColor,
                    child: Text(
                        "Configurar CEP",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: supportingColor,
                      ),
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child:  Text(
                  "$_textDinamic",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
