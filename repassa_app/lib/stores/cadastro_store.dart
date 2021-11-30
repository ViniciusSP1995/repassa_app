import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/cadastro/cadastro.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/models/User.dart';
import 'package:repassa_app/helpers/extensoes.dart';
import 'package:http/http.dart' as http;

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {
  /*AuthService authService = AuthService();*/

  @observable
  String? nome;

  @action
  void setNome(String valor) => nome = valor;

  @computed
  bool get nomeValido => nome != null && nome!.length > 6;

  String? get nomeErro {
    if (nome == null || nomeValido) {
      return null;
    } else if (nome!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }

  @observable
  String? email;

  @action
  void setEmail(String valor) => email = valor;

  @computed
  bool get emailValido => email != null && email!.isEmailValid();

  String? get emailErro {
    if (email == null || emailValido) {
      return null;
    } else if (email!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'E-mail inválido';
    }
  }

  @observable
  String? foto;

  @observable
  String? senha;

  @action
  void setSenha(String valor) => senha = valor;

  @computed
  bool get senhaValida => senha != null && senha!.length >= 6;

  String? get senhaErro {
    if (senha == null || senhaValida) {
      return null;
    } else if (senha!.isEmpty) {
      return 'Campo Obrigatório';
    } else {
      return 'Senha muito curta';
    }
  }

  @observable
  String? confirmarSenha;

  @action
  void setConfirmarSenha(String valor) => confirmarSenha = valor;

  @computed
  bool get confirmarSenhaValido =>
      confirmarSenha != null && confirmarSenha == senha;

  String? get confirmarSenhaErro {
    if (confirmarSenha == null || confirmarSenhaValido) {
      return null;
    } else {
      return 'Senhas não coincidem';
    }
  }

  @computed
  bool get formularioValido =>
      nomeValido && emailValido && senhaValida && confirmarSenhaValido;

  @computed
  Function? get cadastrarPressionado =>
      (formularioValido && !loading) ? _cadastrar : null;

  @observable
  bool loading = false;

  @observable
  String? erro;

  @observable
  bool? cadastroSalvo;

  @action
  Future<void> _cadastrar() async {
    loading = true;

    cadastroSalvo = true;

    final user = User(
      nome: nome,
      email: email,
      foto: foto,
      senha: senha,
    );

    http.Response response = await http.post(
      Uri.parse('http://192.168.42.6:8080/usuario/cadastrar'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(user),
    );

    print(response.body);

    loading = false;

  }
}
