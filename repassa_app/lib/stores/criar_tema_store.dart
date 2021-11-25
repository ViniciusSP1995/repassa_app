import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:http/http.dart' as http;
import 'package:repassa_app/models/UserLogin.dart';
import 'package:repassa_app/stores/login_store.dart';

part 'criar_tema_store.g.dart';

class CriarTemaStore = _CriarTemaStore with _$CriarTemaStore;

abstract class _CriarTemaStore with Store {
  @observable
  String? descricao;

  @action
  void setDescricao(String valor) => descricao = valor;

  Future<void> publicar() async {
    final tema = Tema(
      descricao: descricao,
    );

    print(dotenv.env['token']);

    http.Response response =
        await http.post(Uri.parse('http://192.168.42.168:8080/tema'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(tema));

    print(response.body);
  }
}
