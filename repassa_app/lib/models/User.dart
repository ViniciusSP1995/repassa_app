import 'package:repassa_app/models/Postagem.dart';

class User {
  User({this.id, this.nome, this.email, this.senha, this.foto, required this.postagem});

  num? id;
  String? nome;
  String? email;
  String? senha;
  String? foto;
  List<Postagem> postagem;
}
