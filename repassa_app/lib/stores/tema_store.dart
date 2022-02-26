import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/services/TemaService.dart';

part 'tema_store.g.dart';

class TemaStore = _TemaStore with _$TemaStore;

abstract class _TemaStore with Store {
  @observable
  Tema? tema;

  @observable
  ObservableList<Tema> temas = ObservableList<Tema>();

  @computed
  List<Tema> get allTemas => temas.toList();

  @observable
  String? descricao;

  @action
  void setDescricao(String valor) => descricao = valor;

  @action
  Future GetAllTemas() async {
    temas = ObservableList<Tema>.of(await TemaService().getAllTema());

    return temas;
  }

  @action
  Future GetByIdTema(int id) async {
    tema = await TemaService().getByIdTema(id);

    return tema;
  }

  Future<void> publicar() async {
    final tema = Tema(
      descricao: descricao,
    );

    print(dotenv.env['token']);

    await TemaService().postTema(tema);

    await GetAllTemas();
  }

  Future<void> atualizar() async {
    final tema = Tema(
        id: this.tema!.id, descricao: descricao, /*postagem: this.tema!.postagem*/);

    await TemaService().putTema(tema);

    await GetAllTemas();
  }

  Future<void> deleteTema(int id) async {
    await TemaService().deleteTema(id);

    await GetAllTemas();
  }
}
