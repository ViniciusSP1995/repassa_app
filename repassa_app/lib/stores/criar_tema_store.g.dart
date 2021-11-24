// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criar_tema_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CriarTemaStore on _CriarTemaStore, Store {
  final _$descricaoAtom = Atom(name: '_CriarTemaStore.descricao');

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

  final _$_CriarTemaStoreActionController =
      ActionController(name: '_CriarTemaStore');

  @override
  void setDescricao(String valor) {
    final _$actionInfo = _$_CriarTemaStoreActionController.startAction(
        name: '_CriarTemaStore.setDescricao');
    try {
      return super.setDescricao(valor);
    } finally {
      _$_CriarTemaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao}
    ''';
  }
}
