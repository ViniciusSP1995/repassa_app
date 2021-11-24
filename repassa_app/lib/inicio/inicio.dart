import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/inicio/components/minhas_postagens.dart';
import 'package:repassa_app/inicio/components/modal_postagem.dart';
import 'package:repassa_app/inicio/components/todas_postagens.dart';
import 'package:repassa_app/stores/postagens_store.dart';

class Inicio extends StatefulWidget {
  Inicio({this.initialPage = 0});

  final int initialPage;

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  TabController? tabController;

  final PostagensStore postagens = PostagensStore();

  @override
  void initState() {
    super.initState();

    tabController =
        TabController(length: 2, vsync: this, initialIndex: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCustomizado(),
        body: NestedScrollView(
            headerSliverBuilder: (context, isScrollabe) {
              return <Widget>[
                Menu(),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                      child: SizedBox(
                        width: 100,
                        height: 200,
                        child: Card(
                            color: Colors.grey[400],
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Text(
                                      'Olá, Vinícius da Silva, escreva sua publicação aqui!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Divider(height: 40),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(children: [
                                        Image.network(
                                            'https://i.imgur.com/RxsmP9u.png',
                                            width: 30,
                                            height: 30),
                                        Text('Foto',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ))
                                      ]),
                                      SizedBox(width: 50),
                                      Column(
                                        children: [
                                          Image.network(
                                              'https://i.imgur.com/by6kzAb.png',
                                              width: 30,
                                              height: 30),
                                          Text('Vídeo',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      onTap: () {
                        return showBarModalBottomSheet(
                            context: context,
                            builder: (context) => ModalPostagem());
                      } as VoidCallback),
                )),
                SliverToBoxAdapter(
                  child: Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TabBar(
                      isScrollable: true,
                      controller: tabController,
                      indicatorColor: Colors.transparent,
                      tabs: <Widget>[
                        Tab(
                            child: Text('Todas as Postagens',
                                style: TextStyle(
                                  color: Color(0XFF61297c),
                                ))),
                        Tab(
                            child: Text('Minhas Postagens',
                                style: TextStyle(color: Color(0XFF61297c)))),
                      ],
                      indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            side: BorderSide(color: Color(0XFF61297c))),
                      )),
                    )
                )
              ];
            },
            body: SizedBox(
              height: 300,
              width: 350,
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    /*Observer(builder: (_) {*/

                    /*if (postagens.todasPostagens.isEmpty)
                    return Text('Não há postagens no momento');*/

                    ListView.builder(
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return TodasPostagens(
                            /*postagens.todasPostagens[index], postagens*/);
                      },
                    ),
                    /* }),*/
                    /*Observer(builder: (_) {*/
                    /*if (postagens.minhasPostagens.isEmpty)
                    return Text('Não há postagens no momento');*/

                    ListView.builder(
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return MinhasPostagens(
                            /*postagens.minhasPostagens[index], postagens*/);
                      },
                    )

                    /* }) */
                  ]),
            ))

       
        );
  }
}
