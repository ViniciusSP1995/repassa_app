import 'package:flutter/material.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_opcoes.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/sobre/sobre.dart';

class DrawerSecao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DrawerOpcoes(
          titulo: 'Início',
          icone: Icons.home,
          acionar: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Home()));
          },
          ),
      DrawerOpcoes(
          titulo: 'Sobre',
          icone: Icons.people,
          acionar: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Sobre()));
          },
        ),
      DrawerOpcoes(
          titulo: 'Cadastre-se',
          icone: Icons.app_registration,
          acionar: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Cadastro()));
          },
        ),
      DrawerOpcoes(
          titulo: 'Entrar',
          icone: Icons.login,
          acionar: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Login()));
          },
        ),
    ]);
  }
}
