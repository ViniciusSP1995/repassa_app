import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/models/User.dart';
import 'package:repassa_app/services/AuthService.dart';
import 'package:repassa_app/services/PostagemService.dart';

part 'postagens_store.g.dart';

class PostagensStore = _PostagensStore with _$PostagensStore;

abstract class _PostagensStore with Store {
  @observable
  ObservableList<Postagem> postagens = ObservableList<Postagem>();

  @observable
  String? titulo;

  @observable
  Postagem? postagem;

  @observable
  User? user;

  @observable
  Tema? tema;

  @observable
  String pesquisa = '';

  @action
  void setTitulo(String valor) => titulo = valor;

  @observable
  String? texto;

  @action
  void setTexto(String valor) => texto = valor;

  @observable
  String? imagem;

  @action
  void setImagem(String valor) => imagem = valor;

  @action
  Future GetAllPostagens() async {
    postagens =
        ObservableList<Postagem>.of(await PostagemService().getAllPostagens());

    return postagens.sort((a, b) => b.data!.compareTo(a.data!));
  }

  @action
  Future GetByTituloPostagem(String titulo) async {
    postagens = ObservableList<Postagem>.of(
        await PostagemService().getByTituloPostagem(titulo));

    return postagens;
  }

  @action
  Future GetByIdPostagem(int id) async {
    postagem = await PostagemService().getByIdPostagens(id);

    print('++++++++++++++++${postagem!.toJson()}++++++++++++++++');

    return postagem;
  }

  @computed
  List<Postagem> get listaPostagens => postagens.toList();

  @computed
  List<Postagem> get minhasPostagens => postagens
      .where((postagem) =>
          postagem.email!.id == int.parse(dotenv.env['id'].toString()))
      .toList();

  @action
  Future GetByIdUser(int id) async {
    user = await AuthService().getByIdUser(id);

    print('++++++++++++++++${user!.toJson()}++++++++++++++++++');
    return user;
  }

  @action
  void FindByTituloPostagem() {
    if (pesquisa != '') {
      GetByTituloPostagem(pesquisa);
    } else {
      GetAllPostagens();
    }
  }

  @action
  Future<void> publicar() async {
    print(user!.id);
    print(tema!.id);

    final postagem = Postagem(
      tema: tema,
      data: DateTime.now(),
      img: imagem,
      texto: texto,
      titulo: titulo,
      email: user,
    );

    await PostagemService().postPostagem(postagem);
  }

  @action
  Future<void> deletePostagem(int id) async {
    await PostagemService().deletePostagem(id);

    await GetAllPostagens();
  }

  @action
  Future<void> atualizar() async {
    final postagem = Postagem(
      id: this.postagem!.id,
      tema: tema,
      data: this.postagem!.data,
      email: this.postagem!.email,
      titulo: titulo,
      texto: texto,
      img: imagem,
    );

    await PostagemService().putPostagem(postagem);
  }
}
