// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criar_postagem_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CriarPostagemStore on _CriarPostagemStore, Store {
  final _$tituloAtom = Atom(name: '_CriarPostagemStore.titulo');

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

  final _$textoAtom = Atom(name: '_CriarPostagemStore.texto');

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

  final _$temaAtom = Atom(name: '_CriarPostagemStore.tema');

  @override
  Tema get tema {
    _$temaAtom.reportRead();
    return super.tema;
  }

  @override
  set tema(Tema value) {
    _$temaAtom.reportWrite(value, super.tema, () {
      super.tema = value;
    });
  }

  final _$imagemAtom = Atom(name: '_CriarPostagemStore.imagem');

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

  final _$_CriarPostagemStoreActionController =
      ActionController(name: '_CriarPostagemStore');

  @override
  void setTitulo(String valor) {
    final _$actionInfo = _$_CriarPostagemStoreActionController.startAction(
        name: '_CriarPostagemStore.setTitulo');
    try {
      return super.setTitulo(valor);
    } finally {
      _$_CriarPostagemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTexto(String valor) {
    final _$actionInfo = _$_CriarPostagemStoreActionController.startAction(
        name: '_CriarPostagemStore.setTexto');
    try {
      return super.setTexto(valor);
    } finally {
      _$_CriarPostagemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTema(Tema valor) {
    final _$actionInfo = _$_CriarPostagemStoreActionController.startAction(
        name: '_CriarPostagemStore.setTema');
    try {
      return super.setTema(valor);
    } finally {
      _$_CriarPostagemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImagem(String valor) {
    final _$actionInfo = _$_CriarPostagemStoreActionController.startAction(
        name: '_CriarPostagemStore.setImagem');
    try {
      return super.setImagem(valor);
    } finally {
      _$_CriarPostagemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titulo: ${titulo},
texto: ${texto},
tema: ${tema},
imagem: ${imagem}
    ''';
  }
}
