import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/componentes/rodape.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/stores/cadastro_store.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final CadastroStore cadastroStore = CadastroStore();

  @override
  void initState() {
    super.initState();

    when((_) => cadastroStore.cadastroSalvo as bool, () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login()));
    });
  }

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
                      Observer(
                        builder: (_) {
                          return SizedBox(
                            child: TextField(
                              enabled: !cadastroStore.loading,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  isDense: true,
                                  hintText: 'Seu nome',
                                  errorText: cadastroStore.nomeErro,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Color(0XFF61297c)),
                                  )),
                              onChanged: cadastroStore.setNome,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('Email',
                                  style: TextStyle(
                                    fontSize: 20,
                                  )
                                )
                              )
                        ],
                      ),
                      Observer(builder: (_) {
                        return SizedBox(
                          child: TextField(
                            enabled: !cadastroStore.loading,
                            decoration: InputDecoration(
                                errorText: cadastroStore.emailErro,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                hintText: 'Seu melhor email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Color(0XFF61297c)),
                                )),
                            onChanged: cadastroStore.setEmail,
                          ),
                        );
                      }),
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
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Link da sua foto',
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Color(0XFF61297c)),
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
                      Observer(
                        builder: (_) {
                          return SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                  errorText: cadastroStore.senhaErro,
                                  hintText: 'Sua senha',
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Color(0XFF61297c)),
                                  )),
                              obscureText: true,
                              onChanged: cadastroStore.setSenha,
                            ),
                          );
                        },
                      ),
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
                      Observer(
                        builder: (_) {
                          return SizedBox(
                              child: TextField(
                            decoration: InputDecoration(
                                errorText: cadastroStore.confirmarSenhaErro,
                                hintText: 'Confirme sua senha',
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Color(0XFF61297c)),
                                )),
                            onChanged: cadastroStore.setConfirmarSenha,
                            obscureText: true,
                          ));
                        },
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
                          Observer(
                            builder: (_) {
                            return Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  child: cadastroStore.loading
                                      ? CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.white),
                                        )
                                      : Text('Cadastrar',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.5);
                                        else if (states
                                            .contains(MaterialState.disabled))
                                          return Color(0XFF61297c)
                                              .withAlpha(150);
                                        else
                                          return Color(0XFF61297c);
                                      }),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      )),
                                  onPressed: cadastroStore.cadastrarPressionado
                                      as VoidCallback,
                                ),
                              ),
                            );
                          })
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
                  )),
              Rodape(),
            ]))
          ])
        ]));
  }
}
