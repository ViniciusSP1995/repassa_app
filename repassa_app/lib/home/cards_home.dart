import 'package:flutter/material.dart';

class CardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Text('Como funciona?',
          style: TextStyle(
            color: Color(0XFF61297c),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          )),
      Card(
          elevation: 10,
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            Image.network('https://i.imgur.com/J6AwmdW.png'),
            Text.rich(
              TextSpan(
                text: 'Preciso desapegar...',
                style: TextStyle(
                  color: Color(0XFF61297c),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: Text(
                    'Tem roupas, móveis ou eletrodomésticos que não utiliza mais? \n\nA repassa te ajuda a encontrar um novo lar para seus itens!\n\nVocê desapega, ajuda quem precisa e colabora para diminuir o impacto ambiental que o descarte desses itens poderiam gerar.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )))
          ])),
      Card(
          elevation: 10,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image.network("https://i.imgur.com/O8m0Lch.png"),
              ),
              Text.rich(TextSpan(
                  text: 'Estou precisando de...',
                  style: TextStyle(
                    color: Color(0XFF61297c),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                  margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Text(
                      'Está precisando de roupas de frio ou uma cadeira para o seu home office?\n\nA repassa te ajuda a encontrar os itens perfeitos pra você!\n\nÉ só se cadastrar e começar as suas buscas.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      )))
            ],
          )),
      Card(
          elevation: 10,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.network("https://i.imgur.com/yRTjKUk.png"),
              Text.rich(TextSpan(
                  text: 'Quero divulgar campanhas',
                  style: TextStyle(
                    color: Color(0XFF61297c),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ))),
              Container(
                margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: Text(
                    'Viu uma campanha de solidariedade bacana acontecendo\n\nA repassa é o lugar certo para divulgar!\n\nVamos juntes expandir ainda mais essa rede do bem!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),
            ],
          )),
    ]);
  }
}
