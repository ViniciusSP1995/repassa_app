// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tema_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TemaStore on _TemaStore, Store {
  Computed<List<Tema>>? _$allTemasComputed;

  @override
  List<Tema> get allTemas =>
      (_$allTemasComputed ??= Computed<List<Tema>>(() => super.allTemas,
              name: '_TemaStore.allTemas'))
          .value;

  final _$temaAtom = Atom(name: '_TemaStore.tema');

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

  final _$temasAtom = Atom(name: '_TemaStore.temas');

  @override
  ObservableList<Tema> get temas {
    _$temasAtom.reportRead();
    return super.temas;
  }

  @override
  set temas(ObservableList<Tema> value) {
    _$temasAtom.reportWrite(value, super.temas, () {
      super.temas = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_TemaStore.descricao');

  @override
  String? get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String? value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$GetAllTemasAsyncAction = AsyncAction('_TemaStore.GetAllTemas');

  @override
  Future<dynamic> GetAllTemas() {
    return _$GetAllTemasAsyncAction.run(() => super.GetAllTemas());
  }

  final _$GetByIdTemaAsyncAction = AsyncAction('_TemaStore.GetByIdTema');

  @override
  Future<dynamic> GetByIdTema(int id) {
    return _$GetByIdTemaAsyncAction.run(() => super.GetByIdTema(id));
  }

  final _$_TemaStoreActionController = ActionController(name: '_TemaStore');

  @override
  void setDescricao(String valor) {
    final _$actionInfo = _$_TemaStoreActionController.startAction(
        name: '_TemaStore.setDescricao');
    try {
      return super.setDescricao(valor);
    } finally {
      _$_TemaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tema: ${tema},
temas: ${temas},
descricao: ${descricao},
allTemas: ${allTemas}
    ''';
  }
}
