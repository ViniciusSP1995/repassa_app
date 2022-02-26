import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/models/User.dart';

class PostagemService {
  Future<List<Postagem>> getAllPostagens() async {
    http.Response response =
        await http.get(Uri.parse('${dotenv.env['server']}/postagem'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });

    print(response.body);

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map<Postagem>((resp) => Postagem.fromMap(resp)).toList();
  }

  Future<Postagem> getByIdPostagens(int id) async {
    http.Response response = await http
        .get(Uri.parse('${dotenv.env['server']}/postagem/${id}'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });
    print(response.body);

    final Map<String, dynamic> responseMap = jsonDecode(response.body);

    final postagem = Postagem(
        id: responseMap['id'],
        titulo: responseMap['titulo'],
        texto: responseMap['texto'],
        img: responseMap['img'],
        data: DateTime.parse(responseMap['data']),
        tema: Tema.fromMap(responseMap['tema']),
        email: User.fromMap(responseMap['email']));

    return postagem;
  }

  Future<List<Postagem>> getByTituloPostagem(String titulo) async {
    http.Response response = await http.get(
        Uri.parse(
          '${dotenv.env['server']}/postagem/titulo/${titulo}',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '${dotenv.env['token']}'
        });

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map<Postagem>((resp) => Postagem.fromMap(resp)).toList();
  }

  Future<void> postPostagem(Postagem postagem) async {
    http.Response response =
        await http.post(Uri.parse('${dotenv.env['server']}/postagem'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(postagem));
  }

  Future<void> putPostagem(Postagem postagem) async {
    http.Response response =
        await http.put(Uri.parse('${dotenv.env['server']}/postagem'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(postagem));
  }

  Future<void> deletePostagem(int id) async {
    http.Response response = await http.delete(
      Uri.parse('${dotenv.env['server']}/postagem/${id}'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': '${dotenv.env['token']}'
      },
    );
  }
}
