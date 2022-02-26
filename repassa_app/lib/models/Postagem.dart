import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/models/User.dart';

enum PostagemStatus { TODAS, MINHAS }

class Postagem {
  Postagem(
      {this.id,
      this.img,
      this.titulo,
      this.texto,
      this.data,
      this.email,
      this.tema});

  num? id;
  String? img;
  String? titulo;
  String? texto;
  DateTime? data;
  User? email;
  Tema? tema;

  PostagemStatus status = PostagemStatus.TODAS;

  factory Postagem.fromMap(Map postagemMap) {
    return Postagem(
      id: postagemMap['id'],
      img: postagemMap['img'],
      titulo: postagemMap['titulo'],
      texto: postagemMap['texto'],
      data: postagemMap['data'] == null
          ? null
          : DateTime.parse(postagemMap['data']),
      email: postagemMap['email'] == null
          ? null
          : User.fromMap(postagemMap['email']),
      tema: postagemMap['tema'] == null
          ? null
          : Tema.fromMap(postagemMap['tema']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'img': img,
      'titulo': titulo,
      'texto': texto,
      'data': data == null ? null : data!.toIso8601String(),
      'email': {"id": email!.id},
      'tema': {"id": tema!.id},
    };
  }
}
