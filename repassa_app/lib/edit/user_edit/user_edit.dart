import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_feed.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/models/User.dart';
import 'package:repassa_app/stores/auth_store.dart';

class UserEdit extends StatelessWidget {
  const UserEdit(this.user, this.authStore);

  final User user;
  final AuthStore authStore;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            drawer: DrawerFeed(),
            body: Stack(children: [
              CustomScrollView(slivers: [
                Menu(),
                SliverToBoxAdapter(
                    child: Column(children: [
                  Text('Atualize seu cadastro!',
                      style: TextStyle(color: Color(0XFF61297c), fontSize: 26)),
                  Container(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: Form(
                              child: Column(children: [
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Nome',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                initialValue: user.nome,
                                decoration: InputDecoration(
                                  errorText: authStore.nomeErro,
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onChanged: authStore.setNome,
                              );
                            }),
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Email',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                initialValue: user.email,
                                decoration: InputDecoration(
                                  errorText: authStore.emailErro,
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onChanged: authStore.setEmail,
                              );
                            }),
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Link da foto',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                initialValue: user.foto,
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onChanged: authStore.setFoto,
                              );
                            }),
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Telefone',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Seu melhor número de telefone',
                                ),
                              );
                            }),
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Senha',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                decoration: InputDecoration(
                                  errorText: authStore.senhaErro,
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Sua senha',
                                ),
                                onChanged: authStore.setSenha,
                              );
                            }),
                            SizedBox(height: 20),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text('Confirme sua senha',
                                      style: TextStyle(fontSize: 16))),
                            ]),
                            Observer(builder: (_) {
                              return TextFormField(
                                decoration: InputDecoration(
                                  errorText: authStore.confirmarSenhaErro,
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Digite novamente sua senha',
                                ),
                                onChanged: authStore.setConfirmarSenha,
                              );
                            }),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: ElevatedButton(
                                        child: Text('Cancelar'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Inicio()));
                                        })),
                                SizedBox(width: 10),
                                SizedBox(
                                  child: Observer(builder: (_) {
                                  return ElevatedButton(
                                      child: Text('Atualizar'),
                                      style: ElevatedButton.styleFrom(
                                        primary: authStore.formularioValido ? Color(0XFF61297c) : Color(0XFF61297c).withAlpha(150),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      onPressed: () {
                                        if (authStore.formularioValido) {
                                          authStore.atualizar();
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home()));
                                        } else {
                                          return null;
                                        }
                                      }
                                    );
                                })),
                              ],
                            )
                          ])))),
                ]))
              ])
            ])));
  }
}
