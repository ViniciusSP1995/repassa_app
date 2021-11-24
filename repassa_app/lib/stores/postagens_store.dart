import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:http/http.dart' as http;

part 'postagens_store.g.dart';

class PostagensStore = _PostagensStore with _$PostagensStore;

abstract class _PostagensStore with Store {
  @observable
  List<Postagem> postagens = [];

  @computed
  List<Postagem> get todasPostagens => postagens
      .where((postagem) => postagem.status == PostagemStatus.TODAS)
      .toList();

  List<Postagem> get minhasPostagens => postagens
      .where((postagem) => postagem.status == PostagemStatus.MINHAS)
      .toList();

  Future<void> _getAllPostagens() async {
    http.Response response = await http.get(
      Uri.parse('http://192.168.42.240:8080/postagem'),
      headers: {"Content-Type": "application/json"},
    );

    @action
    Future<void> _GetByIdUser(num id) async {
      http.Response response = await http.get(
        Uri.parse('http://192.168.42.240:8080/postagem/${id}'),
        headers: {"Content-Type": "application/json"}
      );
    }
  }
}
