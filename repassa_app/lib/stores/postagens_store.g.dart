// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postagens_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostagensStore on _PostagensStore, Store {
  Computed<List<Postagem>>? _$todasPostagensComputed;

  @override
  List<Postagem> get todasPostagens => (_$todasPostagensComputed ??=
          Computed<List<Postagem>>(() => super.todasPostagens,
              name: '_PostagensStore.todasPostagens'))
      .value;

  final _$postagensAtom = Atom(name: '_PostagensStore.postagens');

  @override
  List<Postagem> get postagens {
    _$postagensAtom.reportRead();
    return super.postagens;
  }

  @override
  set postagens(List<Postagem> value) {
    _$postagensAtom.reportWrite(value, super.postagens, () {
      super.postagens = value;
    });
  }

  @override
  String toString() {
    return '''
postagens: ${postagens},
todasPostagens: ${todasPostagens}
    ''';
  }
}
