import 'package:flutter/material.dart';

class DrawerInfo extends StatelessWidget {
  DrawerInfo({this.descricao, this.icone, this.onTap});

  final String? descricao;
  final IconData? icone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
      title: Text(
        descricao!,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Theme.of(context).primaryColor,
          fontSize: 20
        )
      ),
      leading: Icon(
        icone,
        color: Theme.of(context).primaryColor,
        size: 50.0
      ),
    onTap: onTap,
    ),
    );
  }
}