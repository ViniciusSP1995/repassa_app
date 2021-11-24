import 'package:repassa_app/models/Postagem.dart';

class Tema {
  Tema({this.id, this.descricao, this.postagem});

  num? id;
  String? descricao;
  List<Postagem>? postagem;

  factory Tema.fromMap(Map temaMap) {
    return Tema(
      descricao: temaMap['descricao']
      );
  }

  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao
    };
  }
}
