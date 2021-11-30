import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx/mobx.dart';

import 'package:http/http.dart' as http;
import 'package:repassa_app/models/Tema.dart';

part 'tema_store.g.dart';

class TemaStore = _TemaStore with _$TemaStore;

abstract class _TemaStore with Store {
  @observable
  var temas = <Tema>[];
  var tema = Tema();

  @computed
  List<Tema> get allTemas => temas;
  

  @observable
  String? descricao;

  @action
  void setDescricao(String valor) => descricao = valor;

  Future GetAllTemas() async {
    http.Response response = await http.get(
        Uri.parse(
          'http://192.168.42.6:8080/tema',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '${dotenv.env['token']}'
        });
    ;
    print(response.body);

    final List<dynamic> responseMap = jsonDecode(response.body);

    temas = responseMap.map<Tema>((resp) => Tema.fromMap(resp)).toList();

    return temas;
  }

  Future GetByIdTema(num id) async {
    http.Response response = await http.get(
        Uri.parse(
          'http://192.168.42.6:8080/tema/${id}',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '${dotenv.env['token']}'
        });

    final List<dynamic> responseMap = jsonDecode(response.body);

    temas = responseMap.map<Tema>((resp) => Tema.fromMap(resp)).toList();

    return temas;
  }

  Future<void> publicar() async {
    final tema = Tema(
      descricao: descricao,
    );

    print(dotenv.env['token']);

    http.Response response =
        await http.post(Uri.parse('http://192.168.42.6:8080/tema'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(tema));

    print(response.body);
  }
}
