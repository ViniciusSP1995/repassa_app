// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postagens_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostagensStore on _PostagensStore, Store {
  Computed<List<Postagem>>? _$listaPostagensComputed;

  @override
  List<Postagem> get listaPostagens => (_$listaPostagensComputed ??=
          Computed<List<Postagem>>(() => super.listaPostagens,
              name: '_PostagensStore.listaPostagens'))
      .value;
  Computed<List<Postagem>>? _$minhasPostagensComputed;

  @override
  List<Postagem> get minhasPostagens => (_$minhasPostagensComputed ??=
          Computed<List<Postagem>>(() => super.minhasPostagens,
              name: '_PostagensStore.minhasPostagens'))
      .value;

  final _$postagensAtom = Atom(name: '_PostagensStore.postagens');

  @override
  ObservableList<Postagem> get postagens {
    _$postagensAtom.reportRead();
    return super.postagens;
  }

  @override
  set postagens(ObservableList<Postagem> value) {
    _$postagensAtom.reportWrite(value, super.postagens, () {
      super.postagens = value;
    });
  }

  final _$tituloAtom = Atom(name: '_PostagensStore.titulo');

  @override
  String? get titulo {
    _$tituloAtom.reportRead();
    return super.titulo;
  }

  @override
  set titulo(String? value) {
    _$tituloAtom.reportWrite(value, super.titulo, () {
      super.titulo = value;
    });
  }

  final _$postagemAtom = Atom(name: '_PostagensStore.postagem');

  @override
  Postagem? get postagem {
    _$postagemAtom.reportRead();
    return super.postagem;
  }

  @override
  set postagem(Postagem? value) {
    _$postagemAtom.reportWrite(value, super.postagem, () {
      super.postagem = value;
    });
  }

  final _$userAtom = Atom(name: '_PostagensStore.user');

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$temaAtom = Atom(name: '_PostagensStore.tema');

  @override
  Tema? get tema {
    _$temaAtom.reportRead();
    return super.tema;
  }

  @override
  set tema(Tema? value) {
    _$temaAtom.reportWrite(value, super.tema, () {
      super.tema = value;
    });
  }

  final _$pesquisaAtom = Atom(name: '_PostagensStore.pesquisa');

  @override
  String get pesquisa {
    _$pesquisaAtom.reportRead();
    return super.pesquisa;
  }

  @override
  set pesquisa(String value) {
    _$pesquisaAtom.reportWrite(value, super.pesquisa, () {
      super.pesquisa = value;
    });
  }

  final _$textoAtom = Atom(name: '_PostagensStore.texto');

  @override
  String? get texto {
    _$textoAtom.reportRead();
    return super.texto;
  }

  @override
  set texto(String? value) {
    _$textoAtom.reportWrite(value, super.texto, () {
      super.texto = value;
    });
  }

  final _$imagemAtom = Atom(name: '_PostagensStore.imagem');

  @override
  String? get imagem {
    _$imagemAtom.reportRead();
    return super.imagem;
  }

  @override
  set imagem(String? value) {
    _$imagemAtom.reportWrite(value, super.imagem, () {
      super.imagem = value;
    });
  }

  final _$GetAllPostagensAsyncAction =
      AsyncAction('_PostagensStore.GetAllPostagens');

  @override
  Future<dynamic> GetAllPostagens() {
    return _$GetAllPostagensAsyncAction.run(() => super.GetAllPostagens());
  }

  final _$GetByTituloPostagemAsyncAction =
      AsyncAction('_PostagensStore.GetByTituloPostagem');

  @override
  Future<dynamic> GetByTituloPostagem(String titulo) {
    return _$GetByTituloPostagemAsyncAction
        .run(() => super.GetByTituloPostagem(titulo));
  }

  final _$GetByIdPostagemAsyncAction =
      AsyncAction('_PostagensStore.GetByIdPostagem');

  @override
  Future<dynamic> GetByIdPostagem(int id) {
    return _$GetByIdPostagemAsyncAction.run(() => super.GetByIdPostagem(id));
  }

  final _$GetByIdUserAsyncAction = AsyncAction('_PostagensStore.GetByIdUser');

  @override
  Future<dynamic> GetByIdUser(int id) {
    return _$GetByIdUserAsyncAction.run(() => super.GetByIdUser(id));
  }

  final _$publicarAsyncAction = AsyncAction('_PostagensStore.publicar');

  @override
  Future<void> publicar() {
    return _$publicarAsyncAction.run(() => super.publicar());
  }

  final _$deletePostagemAsyncAction =
      AsyncAction('_PostagensStore.deletePostagem');

  @override
  Future<void> deletePostagem(int id) {
    return _$deletePostagemAsyncAction.run(() => super.deletePostagem(id));
  }

  final _$atualizarAsyncAction = AsyncAction('_PostagensStore.atualizar');

  @override
  Future<void> atualizar() {
    return _$atualizarAsyncAction.run(() => super.atualizar());
  }

  final _$_PostagensStoreActionController =
      ActionController(name: '_PostagensStore');

  @override
  void setTitulo(String valor) {
    final _$actionInfo = _$_PostagensStoreActionController.startAction(
        name: '_PostagensStore.setTitulo');
    try {
      return super.setTitulo(valor);
    } finally {
      _$_PostagensStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTexto(String valor) {
    final _$actionInfo = _$_PostagensStoreActionController.startAction(
        name: '_PostagensStore.setTexto');
    try {
      return super.setTexto(valor);
    } finally {
      _$_PostagensStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImagem(String valor) {
    final _$actionInfo = _$_PostagensStoreActionController.startAction(
        name: '_PostagensStore.setImagem');
    try {
      return super.setImagem(valor);
    } finally {
      _$_PostagensStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void FindByTituloPostagem() {
    final _$actionInfo = _$_PostagensStoreActionController.startAction(
        name: '_PostagensStore.FindByTituloPostagem');
    try {
      return super.FindByTituloPostagem();
    } finally {
      _$_PostagensStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
postagens: ${postagens},
titulo: ${titulo},
postagem: ${postagem},
user: ${user},
tema: ${tema},
pesquisa: ${pesquisa},
texto: ${texto},
imagem: ${imagem},
listaPostagens: ${listaPostagens},
minhasPostagens: ${minhasPostagens}
    ''';
  }
}
