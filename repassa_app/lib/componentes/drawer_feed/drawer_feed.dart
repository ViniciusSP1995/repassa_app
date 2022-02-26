import 'package:flutter/material.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_secao.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_cabecalho.dart';

class DrawerFeed extends StatelessWidget {
  const DrawerFeed({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [ 
              Image.network('https://i.imgur.com/5KOEUob.png', height: 100),
              DrawerCabecalho(),
              DrawerSecao()
            ]
            
          )
          
        )
      )
    );
  }
}