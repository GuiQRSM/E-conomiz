import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {

 runApp(
   MaterialApp(
     title: "E-conomiz",
     debugShowCheckedModeBanner: false,
     home: HomeStateFul(),
   ),
 );

}

class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

const primeColor = Color.fromARGB(100, 98, 0, 238);
var _text = "Test Content!";

class _HomeStateFulState extends State<HomeStateFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-conomiz"),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "E-conomiz",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: primeColor,
                ),
              ),
              Text(
                "Coming Soon!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.purple,
                ),
              ),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    _text = "Welcome to E-conomiz Beta";
                  });
                },
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
              Text(
                "$_text",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: primeColor,
                ),
              ),
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


/*Scaffold(
       appBar: AppBar(
         title: Text("E-conomiz"),
         backgroundColor: primeColor,
       ),
       body: Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text(
                 "E-conomiz",
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w300,
                 color: primeColor,
               ),
             ),
             Text(
                 "Coming Soon!",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.w700,
                 color: Colors.purple,
               ),
             )
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
     ),*/

 //CONTEUDO ORIGINAL DO body://
/*Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "E-conomiz",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: primeColor,
              ),
            ),
            Text(
              "Coming Soon!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.purple,
              ),
            )
          ],
        ),
      ),*/