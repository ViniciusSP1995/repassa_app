import 'package:repassa_app/models/Postagem.dart';

class Tema {
  Tema({this.id, this.descricao, /*this.postagem*/});

  num? id;
  String? descricao;
  /*List<Postagem>? postagem;*/

  factory Tema.fromMap(Map<String, dynamic> temaMap) {
    return Tema(
        id: temaMap['id'],
        descricao: temaMap['descricao'],
       /* postagem: (temaMap['postagem'] as List)
            .map((e) => Postagem.fromMap(e))
            .toList()*/
      );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'descricao': descricao,
     /* 'postagem': List<dynamic>.from(postagem!.map((e) => e.toJson()))*/
    };
  }
}
