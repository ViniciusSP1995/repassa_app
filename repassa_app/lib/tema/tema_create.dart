import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/delete/tema_delete/tema_delete.dart';
import 'package:repassa_app/edit/tema_edit/tema_edit.dart';
import 'package:repassa_app/stores/auth_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

class TemaCreate extends StatefulWidget {
  @override
  _TemaCreateState createState() => _TemaCreateState();
}

class _TemaCreateState extends State<TemaCreate> {
  TemaStore temaStore = TemaStore();
  AuthStore authStore = AuthStore();

  @override
  void initState() {
    super.initState();
    temaStore.GetAllTemas();

    print('-------------------${temaStore.temas}----------------------------');
  }

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
                  Text('Temas',
                      style: TextStyle(color: Color(0XFF61297c), fontSize: 26)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'Veja aqui todos os temas cadastrados ou cadastre novos:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 15),
                      child: Observer(builder: (_) {
                        return TextField(
                          decoration: InputDecoration(
                              hintText: 'Digite a descrição do tema',
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onChanged: temaStore.setDescricao,
                        );
                      })),
                  SizedBox(child: Observer(builder: (_) {
                    return ElevatedButton(
                        child: Text('Cadastrar'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF61297c),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          temaStore.publicar();
                        });
                  })),
                  SizedBox(height: 20),
                  Text('Todos os temas',
                      style: TextStyle(color: Color(0XFF61297c), fontSize: 26)),
                  SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'id',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )),
                    SizedBox(width: 20),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Descrição do tema',
                          style: TextStyle(fontSize: 14),
                        )),
                    SizedBox(width: 20),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Modificações',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )),
                  ]),
                  SizedBox(
                      width: 290,
                      height: 1000,
                      child: Observer(builder: (_) {
                        return ListView.builder(
                            itemCount: temaStore.allTemas.length,
                            itemBuilder: (context, index) {
                              return Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 4,
                                  child: Container(
                                      height: 80,
                                      child: Row(children: [
                                        Container(
                                            width: 30,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 0, 20, 0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        temaStore
                                                            .temas[index].id
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ))),
                                        Container(
                                            width: 120,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 0, 20, 0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        temaStore.temas[index]
                                                                .descricao
                                                            as String,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))
                                                  ],
                                                ))),
                                        Container(
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 0, 5, 0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                        height: 50,
                                                        width: 50,
                                                        child: IconButton(
                                                          icon:
                                                              Icon(Icons.edit),
                                                          onPressed: () async {
                                                            await temaStore
                                                                .GetByIdTema(
                                                                    temaStore
                                                                        .temas[
                                                                            index]
                                                                        .id!
                                                                        .toInt());

                                                            temaStore
                                                                    .descricao =
                                                                temaStore.tema!
                                                                    .descricao;
                                                            Navigator.of(
                                                                    context)
                                                                .push(MaterialPageRoute(
                                                                    builder: (context) => TemaEdit(
                                                                        temaStore,
                                                                        temaStore
                                                                            .temas[index])));
                                                          },
                                                          color: Colors.blue,
                                                        )),
                                                    SizedBox(
                                                        height: 50,
                                                        width: 50,
                                                        child: IconButton(
                                                            icon: Icon(
                                                                Icons.delete),
                                                            onPressed: () {
                                                              Navigator.of(context).push(MaterialPageRoute(
                                                                  builder: (context) => TemaDelete(
                                                                      temaStore,
                                                                      temaStore
                                                                              .temas[
                                                                          index])));
                                                            },
                                                            color: Colors.red))
                                                  ],
                                                )))
                                      ])));
                            });
                      }))
                ]))
              ])
            ])));
  }
}
