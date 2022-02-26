import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:repassa_app/models/User.dart';
import 'package:repassa_app/models/UserLogin.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> entrar(UserLogin userLogin) async {
    http.Response response =
        await http.post(Uri.parse('${dotenv.env['server']}/usuario/logar'),
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
            },
            body: json.encode(userLogin));

    if (response.statusCode == 200) {
      print(response.body);

      var convertDataToJson = json.decode(response.body);

      dotenv.env['token'] = convertDataToJson['token'] as String;
      dotenv.env['nome'] = convertDataToJson['nome'] as String;
      dotenv.env['foto'] = convertDataToJson['foto'] as String;
      dotenv.env['id'] = convertDataToJson['id'].toString();

      print(dotenv.env['token']);
      print(dotenv.env['nome']);
      print(dotenv.env['foto']);
      print(dotenv.env['id']);
    } else {
      return null;
    }
  }

  Future<void> cadastrar(User user) async {
    http.Response response =
        await http.post(Uri.parse('${dotenv.env['server']}/usuario/cadastrar'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': '${dotenv.env['token']}'
            },
            body: json.encode(user));
  }

  Future<User> getByIdUser(int id) async {
    http.Response response = await http
        .get(Uri.parse('${dotenv.env['server']}/usuario/${id}'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '${dotenv.env['token']}'
    });

    final Map<String, dynamic> usuario = jsonDecode(response.body);

    final user = User(
        id: usuario['id'],
        nome: usuario['nome'],
        email: usuario['email'],
        senha: usuario['senha'],
        foto: usuario['foto']);

    return user;
  }

  
}
