import 'package:flutter/material.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/stores/postagens_store.dart';

class TodasPostagens extends StatelessWidget {
  /*TodasPostagens(this.postagem, this.postagensStore);

  final Postagem postagem;
  final PostagensStore postagensStore;*/

  @override
  Widget build(BuildContext context) {
    return Card(
      
        child: Column(
        children: [
        Container(
        color: Colors.grey[400],
            child: Padding(
      padding: EdgeInsets.all(8),
         child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://i.imgur.com/d5G3pmn.png', height: 40, width: 40)
            ),
            Column(
              children: [
                Text(
                  'Vinícius da Silva',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  )
                  ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 12,
                    ),
                    Text(
                      '21/06/2021 às 14:06',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      )
                      
                      )
                  ]
                )


              ],
              ),
              SizedBox(width: 15),
              Text(
                'Tema: Eletrodomésticos',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                )
              )
            ]
            )
          )
        ),
        Container(
          child: Column(
            children: [
          Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'Doando geladeira',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )
          ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Estou doando essa geladeira, impecavel, usada por apenas alguns anos. Interesados podem entrar em contato comigo pelo Whatsapp, entrego em qualquer estação de metrô',
            textAlign: TextAlign.justify,
          )
          ),
          Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6l8GRP5KhK2D_36dHvOnMG1chZR_MrVmEWg&usqp=CAU'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.network('https://i.imgur.com/aFcH3Qz.png', height: 20, width: 20,),
              ),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 8), 
              child: Image.network('https://i.imgur.com/HF6yrc7.png',  height: 20, width: 20,),
              ),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.network('https://i.imgur.com/9TeRUsD.png',  height: 20, width: 20),
              )
            ]
          )
          ],
          ),
        )
        ]
        )
      );
  }
}
