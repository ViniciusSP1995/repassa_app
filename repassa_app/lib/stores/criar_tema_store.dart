import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:http/http.dart' as http;
import 'package:repassa_app/models/UserLogin.dart';

part 'criar_tema_store.g.dart';

class CriarTemaStore = _CriarTemaStore with _$CriarTemaStore;

abstract class _CriarTemaStore with Store {

  final UserLogin userLogin = GetIt.I<UserLogin>();

  @observable
  String? descricao;

  @action
  void setDescricao(String valor) => descricao = valor;

  Future<void> publicar() async {
    final tema = Tema(
      descricao: descricao,
    );

    http.Response response = await http.post(
        Uri.parse('http://192.168.42.196:8080/tema'),
        headers: {
          'Content-Type': 'application/json',
          'Accept' : 'application/json',
          'Authorization': '${userLogin.token}'
          },
        body: json.encode(tema));

    print(response.body);
  }
}
