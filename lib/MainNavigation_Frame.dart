import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _MainNavigationState extends State<MainNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        backgroundColor: primeColor,
        title: Text(
            "E-conomiz",
          style: TextStyle(
            color: supportingColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: supportingColor,
            ),
            onPressed: (){
              print("ícone de notificações ativada!");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.alternate_email_rounded,
              color: supportingColor,
            ),
            onPressed: (){
              print("ícone de e-mail ativado!");
            },
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(
                "Início",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),),
            icon: Icon(
              Icons.home,
              color: supportingColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Buscar"),
            icon: Icon(
              Icons.search_rounded,
              color: supportingColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Lista"),
            icon: Icon(
              Icons.article_rounded,
              color: supportingColor,
            ),
          ),
        ],
      ),
    );
  }
}
