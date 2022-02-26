import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repassa_app/delete/postagem_delete/postagem_delete.dart';
import 'package:repassa_app/edit/postagem_edit/postagem_edit.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/stores/postagens_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

class MinhasPostagens extends StatelessWidget {
  MinhasPostagens(this.postagem, this.postagensStore, this.temaStore);

  final Postagem postagem;
  final PostagensStore postagensStore;
  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Card(
            child: Column(children: [
          Container(
              color: Colors.grey[400],
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                    postagem.email!.foto.toString(),
                                    height: 40,
                                    width: 40)),
                          Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 150,
                                  child: Text(
                                postagem.email!.nome.toString(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500
                                  )
                                ),
                                )
                              ]
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 150,
                              child: Row(
                              children: [
                              Icon(
                                Icons.access_time,
                                size: 12,
                              ),
                              Text(
                                  ' ${DateFormat('dd/MM/yyyy').format(postagem.data!)} às ${DateFormat('HH:mm').format(postagem.data!)}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500))
                            ])
                            )
                          ],
                        ),
                        )
                          ],
                        ),
                        Container(
                            width: 120,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () async {
                                          await temaStore.GetAllTemas();
                                          await postagensStore.GetByIdPostagem(
                                              postagem.id!.toInt());
                                          postagensStore.tema = null;
                                          postagensStore.titulo =
                                              postagensStore.postagem!.titulo;
                                          postagensStore.texto =
                                              postagensStore.postagem!.texto;
                                          postagensStore.imagem =
                                              postagensStore.postagem!.img;

                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PostagemEdit(
                                                          temaStore,
                                                          postagensStore,
                                                          postagem)));
                                        },
                                        iconSize: 18,
                                        color: Colors.blue),
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        iconSize: 18,
                                        icon: Icon(Icons.delete),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PostagemDelete(postagem,
                                                          postagensStore)));
                                        },
                                        color: Colors.red)
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('Tema: ${postagem.tema!.descricao}',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))
                                  ],
                                )
                              ],
                            ))
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
               Padding(
                 padding: EdgeInsets.only(bottom: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(
                      'https://i.imgur.com/aFcH3Qz.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(
                      'https://i.imgur.com/HF6yrc7.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network('https://i.imgur.com/9TeRUsD.png',
                        height: 20, width: 20),
                  )
                ]
              )
               )
              ],
            ),
          )
        ])));
  }
}
