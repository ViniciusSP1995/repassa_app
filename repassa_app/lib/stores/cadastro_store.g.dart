// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroStore on _CadastroStore, Store {
  Computed<bool>? _$nomeValidoComputed;

  @override
  bool get nomeValido =>
      (_$nomeValidoComputed ??= Computed<bool>(() => super.nomeValido,
              name: '_CadastroStore.nomeValido'))
          .value;
  Computed<bool>? _$emailValidoComputed;

  @override
  bool get emailValido =>
      (_$emailValidoComputed ??= Computed<bool>(() => super.emailValido,
              name: '_CadastroStore.emailValido'))
          .value;
  Computed<bool>? _$senhaValidaComputed;

  @override
  bool get senhaValida =>
      (_$senhaValidaComputed ??= Computed<bool>(() => super.senhaValida,
              name: '_CadastroStore.senhaValida'))
          .value;
  Computed<bool>? _$confirmarSenhaValidoComputed;

  @override
  bool get confirmarSenhaValido => (_$confirmarSenhaValidoComputed ??=
          Computed<bool>(() => super.confirmarSenhaValido,
              name: '_CadastroStore.confirmarSenhaValido'))
      .value;
  Computed<bool>? _$formularioValidoComputed;

  @override
  bool get formularioValido => (_$formularioValidoComputed ??= Computed<bool>(
          () => super.formularioValido,
          name: '_CadastroStore.formularioValido'))
      .value;
  Computed<Function?>? _$cadastrarPressionadoComputed;

  @override
  Function? get cadastrarPressionado => (_$cadastrarPressionadoComputed ??=
          Computed<Function?>(() => super.cadastrarPressionado,
              name: '_CadastroStore.cadastrarPressionado'))
      .value;

  final _$nomeAtom = Atom(name: '_CadastroStore.nome');

  @override
  String? get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String? value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_CadastroStore.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$fotoAtom = Atom(name: '_CadastroStore.foto');

  @override
  String? get foto {
    _$fotoAtom.reportRead();
    return super.foto;
  }

  @override
  set foto(String? value) {
    _$fotoAtom.reportWrite(value, super.foto, () {
      super.foto = value;
    });
  }

  final _$senhaAtom = Atom(name: '_CadastroStore.senha');

  @override
  String? get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String? value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$confirmarSenhaAtom = Atom(name: '_CadastroStore.confirmarSenha');

  @override
  String? get confirmarSenha {
    _$confirmarSenhaAtom.reportRead();
    return super.confirmarSenha;
  }

  @override
  set confirmarSenha(String? value) {
    _$confirmarSenhaAtom.reportWrite(value, super.confirmarSenha, () {
      super.confirmarSenha = value;
    });
  }

  final _$loadingAtom = Atom(name: '_CadastroStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$erroAtom = Atom(name: '_CadastroStore.erro');

  @override
  String? get erro {
    _$erroAtom.reportRead();
    return super.erro;
  }

  @override
  set erro(String? value) {
    _$erroAtom.reportWrite(value, super.erro, () {
      super.erro = value;
    });
  }

  final _$cadastroSalvoAtom = Atom(name: '_CadastroStore.cadastroSalvo');

  @override
  bool? get cadastroSalvo {
    _$cadastroSalvoAtom.reportRead();
    return super.cadastroSalvo;
  }

  @override
  set cadastroSalvo(bool? value) {
    _$cadastroSalvoAtom.reportWrite(value, super.cadastroSalvo, () {
      super.cadastroSalvo = value;
    });
  }

  final _$_cadastrarAsyncAction = AsyncAction('_CadastroStore._cadastrar');

  @override
  Future<void> _cadastrar() {
    return _$_cadastrarAsyncAction.run(() => super._cadastrar());
  }

  final _$_CadastroStoreActionController =
      ActionController(name: '_CadastroStore');

  @override
  void setNome(String valor) {
    final _$actionInfo = _$_CadastroStoreActionController.startAction(
        name: '_CadastroStore.setNome');
    try {
      return super.setNome(valor);
    } finally {
      _$_CadastroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String valor) {
    final _$actionInfo = _$_CadastroStoreActionController.startAction(
        name: '_CadastroStore.setEmail');
    try {
      return super.setEmail(valor);
    } finally {
      _$_CadastroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String valor) {
    final _$actionInfo = _$_CadastroStoreActionController.startAction(
        name: '_CadastroStore.setSenha');
    try {
      return super.setSenha(valor);
    } finally {
      _$_CadastroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmarSenha(String valor) {
    final _$actionInfo = _$_CadastroStoreActionController.startAction(
        name: '_CadastroStore.setConfirmarSenha');
    try {
      return super.setConfirmarSenha(valor);
    } finally {
      _$_CadastroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
foto: ${foto},
senha: ${senha},
confirmarSenha: ${confirmarSenha},
loading: ${loading},
erro: ${erro},
cadastroSalvo: ${cadastroSalvo},
nomeValido: ${nomeValido},
emailValido: ${emailValido},
senhaValida: ${senhaValida},
confirmarSenhaValido: ${confirmarSenhaValido},
formularioValido: ${formularioValido},
cadastrarPressionado: ${cadastrarPressionado}
    ''';
  }
}
