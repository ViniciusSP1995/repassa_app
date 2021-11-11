import 'package:repassa_app/models/Postagem.dart';

class Tema {
  Tema({this.id, this.descricao, required this.postagem});

  num? id;
  String? descricao;
  List<Postagem> postagem;
}
