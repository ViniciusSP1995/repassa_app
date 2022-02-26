import 'package:repassa_app/models/Postagem.dart';

class User {
  User({this.id, this.nome, this.email, this.senha, this.foto , this.postagem});

  num? id;
  String? nome;
  String? email;
  String? senha;
  String? foto;
  List<Postagem>? postagem;

  factory User.fromMap(Map userMap) {
    return User(
      id: userMap['id'],
      nome: userMap['nome'],
      email: userMap['email'],
      senha: userMap['senha'],
      foto: userMap['foto'],
      
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
      'foto': foto,
    };
  }

}
