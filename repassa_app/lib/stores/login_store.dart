import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/helpers/extensoes.dart';
import 'package:repassa_app/models/UserLogin.dart';
import 'package:http/http.dart' as http;

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  UserLogin? userLogin;

  @observable
  String? email;

  @action
  void setEmail(String valor) => email = valor;

  @computed
  bool get emailValido => email != null && email!.isEmailValid();
  String? get emailErro =>
      email == null || emailValido ? null : 'E-mail inválido';

  @observable
  String? senha;

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get senhaValida => senha != null && senha!.length >= 4;
  String? get senhaErro =>
      senha == null || senhaValida ? null : 'Senha inválida';

  @computed
  Function? get loginPressionado =>
      emailValido && senhaValida && !loading ? _login : null;

  @observable
  bool loading = false;

  @observable
  String? error;

  @observable
  bool? loginConcluido;

  @action
  Future<void> _login() async {
    loading = true;

    loginConcluido = true;

    final userLogin = UserLogin(
      email: email,
      senha: senha,
    );

    http.Response response =
        await http.post(Uri.parse('http://192.168.42.6:8080/usuario/logar'),
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
            },
            body: json.encode(userLogin));

    print(response.body);

    var convertDataToJson = json.decode(response.body);

    /* var data = convertDataToJson['token'];*/

    dotenv.env['token'] = convertDataToJson['token'];
    dotenv.env['foto'] = convertDataToJson['foto'];
    dotenv.env['nome'] = convertDataToJson['nome'];
    /*dotenv.env['id'] = convertDataToJson['id'];*/

    /* var teste = dotenv.env['token'];*/

    print(dotenv.env['token']);
    print(dotenv.env['foto']);
    print(dotenv.env['nome']);
  }

}
