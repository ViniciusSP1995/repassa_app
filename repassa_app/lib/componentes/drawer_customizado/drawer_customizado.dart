import 'package:flutter/material.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_secao.dart';
class DrawerCustomizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: [ 
              Image.network('https://i.imgur.com/5KOEUob.png', height: 150),
              DrawerSecao()
            ]
            
          )
          
        )
      )
    );
  }
}
