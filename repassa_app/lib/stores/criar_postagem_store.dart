import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Postagem.dart';
import 'package:repassa_app/models/Tema.dart';

part 'criar_postagem_store.g.dart';

class CriarPostagemStore = _CriarPostagemStore with _$CriarPostagemStore;

abstract class _CriarPostagemStore with Store {
  _CriarPostagemStore(this.postagem, this.tema);

  final Postagem postagem;

  @observable
  String? titulo;

  @action
  void setTitulo(String valor) => titulo = valor;

  @observable
  String? texto;

  @action
  void setTexto(String valor) => texto = valor;

  @observable
  Tema tema;

  @action
  void setTema(Tema valor) => tema = valor;

  @observable
  String? imagem;

  @action
  void setImagem(String valor) => imagem = valor;

  


}
