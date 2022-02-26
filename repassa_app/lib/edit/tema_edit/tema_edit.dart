import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/stores/tema_store.dart';
import 'package:repassa_app/tema/tema_create.dart';

class TemaEdit extends StatelessWidget {
  const TemaEdit(this.temaStore, this.tema);

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
                  Text('Atualizar tema',
                      style: TextStyle(color: Color(0XFF61297c), fontSize: 26)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 15),
                      child: Observer(builder: (_) {
                        return TextFormField(
                          initialValue: tema.descricao,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))),
                           onChanged: temaStore.setDescricao,
                        );
                      })),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                            child: Text('Cancelar'),
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
                            child: Text('Atualizar'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0XFF61297c),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () async {
                             await temaStore.atualizar();
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
