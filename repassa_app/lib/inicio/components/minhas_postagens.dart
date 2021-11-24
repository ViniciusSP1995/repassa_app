import 'package:flutter/material.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/stores/postagens_store.dart';

class MinhasPostagens extends StatelessWidget {


  /*MinhasPostagens(this.postagem, this.postagensStore);

  final Postagem postagem;
  final PostagensStore postagensStore;*/

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
        height: 80,
        child: Padding(
      padding: EdgeInsets.all(8),
         child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://i.imgur.com/hyNcJ8W.png', height: 30, width: 30)
            )
            ]
            )
    )));
  }
}
