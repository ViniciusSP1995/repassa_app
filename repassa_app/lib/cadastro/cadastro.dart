import 'package:flutter/material.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';
import 'package:repassa_app/home/home.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCustomizado(),
        body: Stack(children: [
          CustomScrollView(slivers: [
            Menu(),
            SliverToBoxAdapter(
                child: Column(children: [
              Text(
                'Cadastro',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Divider(height: 50, color: Colors.grey),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Nome',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )))
                        ],
                      ),
                      SizedBox(
                          height: 35,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0XFF61297c)),
                          )))),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Email',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )))
                        ],
                      ),
                      SizedBox(
                          height: 35,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0XFF61297c)),
                          )))),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Link da Foto',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )))
                        ],
                      ),
                      SizedBox(
                          height: 35,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0XFF61297c)),
                          )))),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Senha',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )))
                        ],
                      ),
                      SizedBox(
                          height: 35,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0XFF61297c)),
                          )))),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Confirmar Senha',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )))
                        ],
                      ),
                      SizedBox(
                          height: 35,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0XFF61297c)),
                          )))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: SizedBox(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                  child: Text('Voltar',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFfedc18),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  }),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: SizedBox(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                  child: Text('Cadastrar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFF61297c),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                          Divider(color: Colors.grey, height: 50),
                      Text.rich(TextSpan(
                          text: 'Já tem cadastro? ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Faça login',
                                style: TextStyle(color: Color(0XFF61297c)))
                          ]))
                    ],
                  )
                ),
                Rodape(),
            ]))
          ])
        ]));
  }
}
