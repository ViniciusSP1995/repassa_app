import 'package:repassa_app/models/Postagem.dart';

class Tema {
  Tema({this.id, this.descricao, this.postagem});

  num? id;
  String? descricao;
  List<Postagem>? postagem;

  factory Tema.fromMap(Map<String, dynamic> temaMap) {
    return Tema(id: temaMap['id'], descricao: temaMap['descricao']);
  }

  Tema.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
  }



  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao
    };
  }
  
}
