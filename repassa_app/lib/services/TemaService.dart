import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/models/Tema.dart';

class TemaService {
  Future<List<Tema>> getAllTema() async {
    http.Response response =
        await http.get(Uri.parse('${dotenv.env['server']}/tema'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });

    print(response.body);

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map<Tema>((resp) => Tema.fromMap(resp)).toList();
  }

  Future<Tema> getByIdTema(int id) async {
    http.Response response = await http
        .get(Uri.parse('${dotenv.env['server']}/tema/${id}'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });

    final Map<String, dynamic> responseMap = jsonDecode(response.body);

    final tema = Tema(
        id: responseMap['id'],
        descricao: responseMap['descricao'],
      /*  postagem: List<Postagem>.from(responseMap['postagem'])*/);

    return tema;
  }

  Future<Tema> getById(int id) async {
    http.Response response =
        await http.get(Uri.parse('${dotenv.env['server']}/${id}'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });

    final Tema responseMap = jsonDecode(response.body);

    return responseMap;
  }

  Future<List<Tema>> getByNomeTema(String nome) async {
    http.Response response = await http.get(
        Uri.parse(
          '${dotenv.env['server']}/tema/nome/${nome}',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'AUthorization': '${dotenv.env['token']}'
        });

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map<Tema>((resp) => Tema.fromMap(resp)).toList();
  }

  Future<void> postTema(Tema tema) async {
    http.Response response =
        await http.post(Uri.parse('${dotenv.env['server']}/tema'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(tema));
  }

  Future<void> putTema(Tema tema) async {
    http.Response response =
        await http.put(Uri.parse('${dotenv.env['server']}/tema'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(tema));
  }

  Future<void> deleteTema(int id) async {
    http.Response response = await http
        .delete(Uri.parse('${dotenv.env['server']}/tema/${id}'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });
  }
}
