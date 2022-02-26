import 'package:flutter/material.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            drawer: DrawerCustomizado(),
            body: Stack(
              children: <Widget>[
                CustomScrollView(slivers: [
                  Menu(),
                  SliverToBoxAdapter(
                      child: Column(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Column(children: [
                          Text.rich(
                            TextSpan(
                                text:
                                    'A primeira rede social dedicada exclusivamente a doação de itens.\nEsse é o ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Repassa',
                                      style: TextStyle(
                                        color: Color(0XFF61297c),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ]),
                            textAlign: TextAlign.justify,
                          ),
                          Image.network("https://imgur.com/7zlGG21.jpg.png"),
                          Text(
                              'Inspirada na ODS 12 da Onu, "Consumo e produção responsáveis", a Repassa é uma rede social criada com o propósito de dar novos significados a itens do lar, como móveis e eletrodomésticos.\nVocê dá adeus àquele item que está parado na sua casa e ajuda pessoas que não podem comprá-lo. Com isso, você reduz os impactos ambientais e ainda ajuda alguém que precisa.',
                              textAlign: TextAlign.justify),
                          SizedBox(height: 10),
                          SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Cadastro()));
                                  },
                                  child: Text('Cadastre-se',
                                      style:
                                          TextStyle(color: Color(0XFF61297c))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFfedc18),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )))),
                          SizedBox(height: 30),
                          Text.rich(TextSpan(
                              text: 'A nossa ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'missão',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF61297c)))
                              ])),
                          Image.network("https://imgur.com/lp3m1zI.jpg.png"),
                          Text(
                            'Alcançar um consumo mais consciente exige esforço por parte da população, é claro, mas é também papel das cidades e de seus respectivos governos fazer com que o ODS seja alcançado.\nA nossa missão é sermos reconhecidos como uma rede social que promove a reutilização de objetos como forma de proporcionar bem-estar para os doadores e os favorecidos. Ou seja, para todos os usuários da plataforma.',
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 30),
                          Text.rich(TextSpan(
                              text: 'A nossa ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'visão',
                                    style: TextStyle(
                                      color: Color(0XFF61297c),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ])),
                          Image.network('https://imgur.com/tgI1dB4.jpg.png'),
                          Text(
                            'Consolidar-se dentro do mercado e tornar-se referência para outras redes sociais do mesmo segmento, promovendo um reconhecimento nacional e ampliação do número de usuários dentro da plataforma.',
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 30),
                          Text.rich(TextSpan(
                              text: 'Os nossos ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'valores',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF61297c)))
                              ])),
                          Image.network('https://imgur.com/pckA2Er.jpg.png'),
                          Text(
                            'Reutilização, bem-estar, empatia, ecologia, boa ação e repasse de bens materiais.',
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Cadastro()));
                                  },
                                  child: Text('Cadastre-se',
                                      style:
                                          TextStyle(color: Color(0XFF61297c))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFfedc18),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )))),
                          SizedBox(height: 30),
                          Text('Conheça nossa equipe!',
                              style: TextStyle(
                                color: Color(0XFF61297c),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )),
                          Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/6VFau4g.png'),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text('Denysson Max',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Image.asset('images/git-roxo.png',
                                          height: 30, width: 30),
                                      SizedBox(width: 10),
                                      Image.asset('images/linkedin-roxo.png',
                                          height: 30, width: 30),
                                    ]))
                              ])),
                          Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/k7I3f4y.png'),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text('Rafaela Machado',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Image.asset('images/git-roxo.png',
                                          height: 30, width: 30),
                                      SizedBox(width: 10),
                                      Image.asset('images/linkedin-roxo.png',
                                          height: 30, width: 30),
                                    ]))
                              ])),
                          Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/4DpCTvM.png'),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text('Rita Kiota',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Image.asset('images/git-roxo.png',
                                          height: 30, width: 30),
                                      SizedBox(width: 10),
                                      Image.asset('images/linkedin-roxo.png',
                                          height: 30, width: 30),
                                    ]))
                              ])),
                          Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/d5G3pmn.png'),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text('Vinícius da Silva',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Image.asset('images/git-roxo.png',
                                          height: 30, width: 30),
                                      SizedBox(width: 10),
                                      Image.asset('images/linkedin-roxo.png',
                                          height: 30, width: 30),
                                    ]))
                              ])),
                          Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/hyNcJ8W.png'),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text('Washington Albuquerque',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Image.asset('images/git-roxo.png',
                                          height: 30, width: 30),
                                      SizedBox(width: 10),
                                      Image.asset('images/linkedin-roxo.png',
                                          height: 30, width: 30),
                                    ]))
                              ])),
                        ])),
                    Rodape(),
                  ])),
                ])
              ],
            )));
  }
}
