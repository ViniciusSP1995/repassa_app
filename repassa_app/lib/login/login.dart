import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/services/PostagemService.dart';
import 'package:repassa_app/stores/auth_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthStore authStore = AuthStore();
  final TemaStore temaStore = TemaStore();

  @override
  void initState() {
    super.initState();

    when((_) => authStore.loginConcluido as bool, () async {
      await PostagemService().getAllPostagens();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Inicio()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
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
                                Row(children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text('Email',
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  )
                                ]),
                                Observer(builder: (_) {
                                  return SizedBox(
                                    child: TextField(
                                      enabled: !authStore.loading,
                                      decoration: InputDecoration(
                                        errorText: authStore.emailErro,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color: Color(0XFF61297c)),
                                        ),
                                      ),
                                      onChanged: authStore.setEmail,
                                    ),
                                  );
                                }),
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
                                Observer(builder: (_) {
                                  return SizedBox(
                                    child: TextField(
                                      enabled: !authStore.loading,
                                      decoration: InputDecoration(
                                        errorText: authStore.senhaErro,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color: Color(0XFF61297c)),
                                        ),
                                      ),
                                      onChanged: authStore.setSenha,
                                    ),
                                  );
                                }),
                                Divider(),
                                Observer(builder: (_) {
                                  return SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                          child: Text('Entrar'),
                                          onPressed: authStore.loginPressionado
                                              as VoidCallback,
                                          style: ElevatedButton.styleFrom(
                                              primary: authStore.emailValido && authStore.senhaValida ? Color(0XFF61297c) : Color(0XFF61297c).withAlpha(150)
                                            )
                                        )
                                      );
                                }),
                                Divider(height: 50, color: Colors.grey),
                                Text.rich(
                                  TextSpan(
                                      text: 'Ainda n??o tem cadastro? ',
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
            )));
  }
}
