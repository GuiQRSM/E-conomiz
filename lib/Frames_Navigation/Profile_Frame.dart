import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

const primeColor = Color.fromARGB(255, 98, 0, 238);
const supportingColor = Color.fromRGBO(246, 203, 237, 1);

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      body: Center(
        child: Text(
          "Perfil",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: primeColor,
          ),
        ),
      ),
    );
  }
}
