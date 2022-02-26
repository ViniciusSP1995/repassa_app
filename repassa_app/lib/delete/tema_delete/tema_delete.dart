import 'package:flutter/material.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/stores/tema_store.dart';
import 'package:repassa_app/tema/tema_create.dart';

class TemaDelete extends StatelessWidget {
  TemaDelete(this.temaStore, this.tema);

  final TemaStore temaStore;
  final Tema tema;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            drawer: DrawerFeed(),
            body: Stack(children: [
              CustomScrollView(slivers: [
                Menu(),
                SliverToBoxAdapter(
                    child: Column(children: [
                  Text('Apagar tema',
                      style: TextStyle(color: Color(0XFF61297c), fontSize: 26)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Column(
                        children: [
                          Text(
                            'Você tem certeza que deseja apagar esse tema?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Todas as postagens relacionadas a ele serão igualmente apagadas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Tema: ${tema.descricao}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                            child: Text('Não'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TemaCreate()));
                            }),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        child: ElevatedButton(
                            child: Text('Sim'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0XFF61297c),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              temaStore.deleteTema(tema.id!.toInt());
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TemaCreate()));
                            }),
                      ),
                    ],
                  )
                ]))
              ])
            ])));
  }
}
