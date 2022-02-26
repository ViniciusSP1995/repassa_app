import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/stores/postagens_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

class PostagemEdit extends StatelessWidget {
  const PostagemEdit(this.temaStore, this.postagemStore, this.postagem);

  final TemaStore temaStore;
  final PostagensStore postagemStore;
  final Postagem postagem;

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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text('Atualizar postagem',
                          style: TextStyle(
                              color: Color(0XFF61297c), fontSize: 26)),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
                              child: Form(
                                  child: Column(children: [
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Escolha um tema:',
                                          style: TextStyle(fontSize: 16))),
                                ]),
                                Observer(builder: (_) {
                                  return FormField<String>(
                                    builder: (FormFieldState<String> state) {
                                      return InputDecorator(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 10),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        isEmpty: false,
                                        child: DropdownButtonHideUnderline(
                                            child: Observer(builder: (_) {
                                          return DropdownButton(
                                            hint: Text('Selecione um tema: '),
                                            value: postagemStore.tema,
                                            isDense: true,
                                            onChanged: (Tema? value) {
                                              postagemStore.tema = value;
                                              print(
                                                  postagemStore.tema!.toJson());
                                            },
                                            items:
                                                temaStore.allTemas.map((item) {
                                              return new DropdownMenuItem(
                                                  child: Text(item.descricao!),
                                                  value: item);
                                            }).toList(),
                                          );
                                        })),
                                      );
                                    },
                                  );
                                }),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Título',
                                          style: TextStyle(fontSize: 16))),
                                ]),
                                Observer(builder: (_) {
                                  return TextFormField(
                                    initialValue: postagem.titulo,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        hintText: 'Digite um título'),
                                    onChanged: postagemStore.setTitulo,
                                  );
                                }),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Texto',
                                          style: TextStyle(fontSize: 16))),
                                ]),
                                Observer(builder: (_) {
                                  return TextFormField(
                                    initialValue: postagem.texto,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        hintText: 'O que você está pensando?'),
                                    onChanged: postagemStore.setTexto,
                                  );
                                }),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Imagem',
                                          style: TextStyle(fontSize: 16))),
                                ]),
                                Observer(builder: (_) {
                                  return TextFormField(
                                    initialValue: postagem.img,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      hintText:
                                          'Adicione o link da sua imagem aqui',
                                    ),
                                    onChanged: postagemStore.setImagem,
                                  );
                                }),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        child: ElevatedButton(
                                            child: Text('Cancelar'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.red,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Inicio()));
                                            })),
                                    SizedBox(width: 10),
                                    SizedBox(
                                        child: ElevatedButton(
                                            child: Text('Atualizar'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0XFF61297c),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            onPressed: () async {
                                              postagemStore.atualizar();
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Inicio()));

                                              await postagemStore
                                                  .GetAllPostagens();
                                            })),
                                  ],
                                )
                              ])))),
                    ]))
              ])
            ])));
  }
}
