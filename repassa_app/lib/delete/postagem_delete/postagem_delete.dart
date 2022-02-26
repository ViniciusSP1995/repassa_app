import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/stores/postagens_store.dart';

class PostagemDelete extends StatelessWidget {
  PostagemDelete(this.postagem, this.postagemStore);

  final Postagem postagem;
  final PostagensStore postagemStore;

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
                      Text('Apagar postagem',
                          style: TextStyle(
                              color: Color(0XFF61297c), fontSize: 26)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            'Você tem certeza que deseja apagar essa postagem?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      Card(
                          child: Column(children: [
                        Container(
                            color: Colors.grey[400],
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.network(
                                                  postagem.email!.foto
                                                      .toString(),
                                                  height: 40,
                                                  width: 40)),
                                          Column(
                                            children: [
                                              Text(
                                                  postagem.email!.nome
                                                      .toString(),
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              SizedBox(height: 20),
                                              Row(children: [
                                                Icon(
                                                  Icons.access_time,
                                                  size: 12,
                                                ),
                                                Text(
                                                    '${DateFormat('dd/MM/yyyy').format(postagem.data!)} às ${DateFormat('HH:mm').format(postagem.data!)}',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ])
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                          width: 120,
                                          child: Text(
                                              'Tema: ${postagem.tema!.descricao}',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)))
                                    ]))),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 25),
                                child: Text(postagem.titulo.toString(),
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Text(
                                    postagem.texto.toString(),
                                    textAlign: TextAlign.justify,
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: postagem.img != null
                                    ? Image.network(postagem.img.toString())
                                    : Image.network(
                                        'https://www.buritama.sp.leg.br/imagens/parlamentares-2013-2016/sem-foto.jpg/image'),
                              ),
                            ],
                          ),
                        )
                      ])),
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Inicio()));
                                  })),
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
                                    postagemStore
                                        .deletePostagem(postagem.id!.toInt());

                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Inicio()));
                                  })),
                        ],
                      )
                    ]))
              ])
            ])));
  }
}
