import 'package:flutter/material.dart';

class DrawerOpcoes extends StatelessWidget {
  DrawerOpcoes({this.titulo, this.icone, this.acionar});

  final String? titulo;
  final IconData? icone;
  final VoidCallback? acionar;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: ListTile(
          title: Text(titulo!,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF61297c),
                  fontSize: 20)),
          leading: Icon(
            icone,
            color: Color(0XFF61297c),
            size: 50,
          ),
          onTap: acionar,
        ));
  }
}
