import 'package:flutter/material.dart';

class DrawerOpcoes extends StatelessWidget {
  DrawerOpcoes({this.titulo, this.icone, this.acionar, this.destacado});

  final String? titulo;
  final IconData? icone;
  final VoidCallback? acionar;
  final bool? destacado;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titulo!,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: destacado! ? Color(0XFFfedc18) : Color(0XFF61297c),
        )
      ),
      leading: Icon(
        icone,
        color: destacado! ? Color(0XFFfedc18) : Color(0XFF61297c),
      ),
      onTap: acionar,
    );
  }
}
