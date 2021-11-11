import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/models/User.dart';

class Postagem {
 
  Postagem({this.id, this.img, this.titulo, this.texto, this.data, this.email, this.tema});

  num? id;
  String? img;
  String? titulo;
  String? texto;
  DateTime? data;
  User? email;
  Tema? tema;
}
