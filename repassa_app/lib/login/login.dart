import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';
import 'package:repassa_app/home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCustomizado(),
        body: Stack(
          children: [
            CustomScrollView(slivers: [
              Menu(),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      'Login',
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
                                child: Text('Email',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                              )
                            ]),
                            SizedBox(
                              height: 35,
                              child: TextField(
                                  decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Color(0XFF61297c)),
                                ),
                              )),
                            ),
                            SizedBox(height: 10),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text('Senha',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                              )
                            ]),
                            SizedBox(
                              height: 35,
                              child: TextField(
                                  decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Color(0XFF61297c)),
                                ),
                              )),
                            ),
                            Divider(),
                            SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                    child: Text('Entrar'),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0XFF61297c)))),
                            Divider(height: 50, color: Colors.grey),
                            Text.rich(
                              TextSpan(
                                  text: 'Ainda não tem cadastro? ',
                                  style: TextStyle(fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Cadastre-se!',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0XFF61297c)),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Cadastro()));
                                          })
                                  ]),
                            ),
                            Text.rich(TextSpan(
                                text: 'Esqueceu sua senha? ',
                                style: TextStyle(fontSize: 14),
                                children: [
                                  TextSpan(
                                      text: 'Clique aqui',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0XFF61297c)))
                                ]))
                          ],
                        )),
                    SizedBox(height: 50),
                    Rodape(),
                  ],
                ),
              ),
            ])
          ],
        ));
  }
}
