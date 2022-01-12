import 'package:economiz/Frames_Navigation/Inicial_Frame.dart';
import 'package:economiz/Frames_Navigation/List_Frame.dart';
import 'package:economiz/Frames_Navigation/Profile_Frame.dart';
import 'package:economiz/Frames_Navigation/Search_Frame.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);
var _actualIndex = 3;

class _MainNavigationState extends State<MainNavigation> {
  @override
  Widget build(BuildContext context) {

    List<Widget> frames = [
      HomeStateFul(),
      Search(),
      Lista(),
      Profile()
    ];

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
      body: frames[_actualIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primeColor,
        fixedColor: supportingColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _actualIndex = index;
          });
        },
        currentIndex: _actualIndex,
        items: [
          BottomNavigationBarItem(
            title: Text(
                "Início",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: supportingColor
            ),),
            icon: Icon(
              Icons.home,
              color: supportingColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
                "Buscar",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: supportingColor,
            ),),
            icon: Icon(
              Icons.search_rounded,
              color: supportingColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
                "Lista",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: supportingColor,
              ),),
            icon: Icon(
              Icons.article_rounded,
              color: supportingColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
                "Perfil",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: supportingColor,
              ),),
            icon: Icon(
              Icons.account_circle_rounded,
              color: supportingColor,
            )
          )
        ],
      ),
    );
  }
}
