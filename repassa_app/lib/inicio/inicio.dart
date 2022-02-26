import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/inicio/components/caixa_pesquisa.dart';
import 'package:repassa_app/inicio/components/minhas_postagens.dart';
import 'package:repassa_app/inicio/components/modal_postagem.dart';
import 'package:repassa_app/inicio/components/todas_postagens.dart';
import 'package:repassa_app/stores/postagens_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

class Inicio extends StatefulWidget {
  Inicio({this.initialPage = 0, this.pesquisaAtual})
      : controller = TextEditingController(
          text: pesquisaAtual,
        );

  final int initialPage;
  late final String? pesquisaAtual;
  final TextEditingController controller;

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  TabController? tabController;

  final PostagensStore postagens = GetIt.I<PostagensStore>();
  final TemaStore temaStore = GetIt.I<TemaStore>();

  @override
  void initState() {
    super.initState();
    postagens.GetAllPostagens();

    tabController =
        TabController(length: 2, vsync: this, initialIndex: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            drawer: DrawerFeed(),
            body: NestedScrollView(
                headerSliverBuilder: (context, isScrollabe) {
                  return <Widget>[
                    Menu(),
                    
                    SliverToBoxAdapter(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Observer(builder: (_) {
                              return GestureDetector(
                                  child: SizedBox(
                                    width: 100,
                                    height: 200,
                                    child: Card(
                                        color: Colors.grey[400],
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 20, 20, 0),
                                              child: Text(
                                                  'Olá, ${dotenv.env['nome']}, escreva sua publicação aqui!',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            Divider(height: 40),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(children: [
                                                    Image.network(
                                                        'https://i.imgur.com/RxsmP9u.png',
                                                        width: 30,
                                                        height: 30),
                                                    Text('Foto',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ))
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  onTap: () async {
                                    postagens.tema = null;
                                    await temaStore.GetAllTemas();
                                    await postagens.GetByIdUser(
                                        int.parse(dotenv.env['id'].toString()));
                                    return showBarModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) => ModalPostagem(
                                            temaStore, postagens));
                                  } as VoidCallback);
                            }))),
                    SliverToBoxAdapter(
                      child: CaixaPesquisa(widget.pesquisaAtual, widget.controller, postagens),
                    ),
                    SliverToBoxAdapter(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: TabBar(
                          isScrollable: true,
                          controller: tabController,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Tab(
                                child: Text('Todas as Postagens',
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0XFF61297c),
                                    ))),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Tab(
                                child: Text(
                                  'Minhas Postagens',
                                  textAlign: TextAlign.center,
                                    style:
                                        TextStyle(color: Color(0XFF61297c)
                                  )
                                )
                              ),
                            )
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
                    ))
                  ];
                },
                body: SizedBox(
                  height: 300,
                  width: 350,
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: tabController,
                      children: [
                        Observer(builder: (_) {
                          if (postagens.listaPostagens.isEmpty)
                            return Text('Não há postagens no momento');

                          return ListView.builder(
                            itemCount: postagens.listaPostagens.length,
                            itemBuilder: (_, index) {
                              return TodasPostagens(
                                  postagens.listaPostagens[index], postagens);
                            },
                          );
                        }),
                        Observer(builder: (_) {
                          if (postagens.minhasPostagens.isEmpty)
                            return Text('Não há postagens no momento');

                          return ListView.builder(
                            itemCount: postagens.minhasPostagens.length,
                            itemBuilder: (_, index) {
                              return MinhasPostagens(
                                  postagens.minhasPostagens[index],
                                  postagens,
                                  temaStore);
                            },
                          );
                        })
                      ]),
                ))));
  }
}
