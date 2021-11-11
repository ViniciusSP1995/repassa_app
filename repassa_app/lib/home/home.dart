import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';
import 'package:repassa_app/home/cards_home.dart';
import 'package:repassa_app/sobre/sobre.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCustomizado(),
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: [
                Menu(),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Tá precisando desapegar? \n Então ',
                            style: TextStyle(fontSize: 26),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'repassa!',
                                  style: TextStyle(color: Color(0XFF61297c))),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: SizedBox(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                  child: Text('Sobre nós',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFF61297c),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Sobre()));
                                  }),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                    child: Text('Cadastre-se',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0XFF61297c),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Cadastro()));
                                    }),
                              )),
                        ],
                      ),
                      SizedBox(
                          height: 500,
                          width: 500,
                          child: Carousel(
                            images: [
                              Image.network("https://i.imgur.com/gxrJ95w.png"),
                              Image.network("https://i.imgur.com/i1ZDXhx.png"),
                              Image.network("https://i.imgur.com/Bdbflys.png"),
                            ],
                            showIndicator: false,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://i.imgur.com/5KOEUob.png",
                              height: 250, width: 250),
                        ],
                      ),
                      Text('Conheça mais',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF61297c),
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
                        child: Text(
                            'Somos uma rede social criada com o propósito de dar novos significados a itens seminovos, como móveis, eletrodomésticos e roupas. Nosso objetivo é conectar pessoas que estão buscando por doações à pessoas procurando se desapegar de itens que não utilizam mais.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                        child: Text(
                            'A repassa também promove um espaço para divulgar campanhas de assistência social idealizadas para comunidades como por exemplo: Campanha do agasalho.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                            child: Text('Sobre nós'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0XFF61297c),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Sobre()));
                            }),
                      ),
                      CardsHome(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 10, 10),
                            child: SizedBox(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                  child: Text('Sobre nós',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFF61297c),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Sobre()));
                                  }),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                    child: Text('Cadastre-se',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0XFF61297c),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Cadastro()));
                                    }),
                              )),
                        ],
                      ),
                      Rodape(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
