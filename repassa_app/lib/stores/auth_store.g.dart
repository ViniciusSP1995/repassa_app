// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  Computed<bool>? _$nomeValidoComputed;

  @override
  bool get nomeValido => (_$nomeValidoComputed ??=
          Computed<bool>(() => super.nomeValido, name: '_AuthStore.nomeValido'))
      .value;
  Computed<bool>? _$emailValidoComputed;

  @override
  bool get emailValido =>
      (_$emailValidoComputed ??= Computed<bool>(() => super.emailValido,
              name: '_AuthStore.emailValido'))
          .value;
  Computed<bool>? _$senhaValidaComputed;

  @override
  bool get senhaValida =>
      (_$senhaValidaComputed ??= Computed<bool>(() => super.senhaValida,
              name: '_AuthStore.senhaValida'))
          .value;
  Computed<bool>? _$confirmarSenhaValidoComputed;

  @override
  bool get confirmarSenhaValido => (_$confirmarSenhaValidoComputed ??=
          Computed<bool>(() => super.confirmarSenhaValido,
              name: '_AuthStore.confirmarSenhaValido'))
      .value;
  Computed<bool>? _$formularioValidoComputed;

  @override
  bool get formularioValido => (_$formularioValidoComputed ??= Computed<bool>(
          () => super.formularioValido,
          name: '_AuthStore.formularioValido'))
      .value;
  Computed<Function?>? _$loginPressionadoComputed;

  @override
  Function? get loginPressionado => (_$loginPressionadoComputed ??=
          Computed<Function?>(() => super.loginPressionado,
              name: '_AuthStore.loginPressionado'))
      .value;

  final _$userAtom = Atom(name: '_AuthStore.user');

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

  final _$nomeAtom = Atom(name: '_AuthStore.nome');

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

  final _$emailAtom = Atom(name: '_AuthStore.email');

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

  final _$fotoAtom = Atom(name: '_AuthStore.foto');

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

  final _$senhaAtom = Atom(name: '_AuthStore.senha');

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

  final _$confirmarSenhaAtom = Atom(name: '_AuthStore.confirmarSenha');

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

  final _$loadingAtom = Atom(name: '_AuthStore.loading');

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

  final _$erroAtom = Atom(name: '_AuthStore.erro');

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

  final _$cadastroSalvoAtom = Atom(name: '_AuthStore.cadastroSalvo');

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

  final _$loginConcluidoAtom = Atom(name: '_AuthStore.loginConcluido');

  @override
  bool get loginConcluido {
    _$loginConcluidoAtom.reportRead();
    return super.loginConcluido;
  }

  @override
  set loginConcluido(bool value) {
    _$loginConcluidoAtom.reportWrite(value, super.loginConcluido, () {
      super.loginConcluido = value;
    });
  }

  final _$GetByIdUserAsyncAction = AsyncAction('_AuthStore.GetByIdUser');

  @override
  Future<dynamic> GetByIdUser(int id) {
    return _$GetByIdUserAsyncAction.run(() => super.GetByIdUser(id));
  }

  final _$cadastrarAsyncAction = AsyncAction('_AuthStore.cadastrar');

  @override
  Future<void> cadastrar() {
    return _$cadastrarAsyncAction.run(() => super.cadastrar());
  }

  final _$_loginAsyncAction = AsyncAction('_AuthStore._login');

  @override
  Future<void> _login() {
    return _$_loginAsyncAction.run(() => super._login());
  }

  final _$atualizarAsyncAction = AsyncAction('_AuthStore.atualizar');

  @override
  Future<void> atualizar() {
    return _$atualizarAsyncAction.run(() => super.atualizar());
  }

  final _$_AuthStoreActionController = ActionController(name: '_AuthStore');

  @override
  void setNome(String valor) {
    final _$actionInfo =
        _$_AuthStoreActionController.startAction(name: '_AuthStore.setNome');
    try {
      return super.setNome(valor);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String valor) {
    final _$actionInfo =
        _$_AuthStoreActionController.startAction(name: '_AuthStore.setEmail');
    try {
      return super.setEmail(valor);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFoto(String valor) {
    final _$actionInfo =
        _$_AuthStoreActionController.startAction(name: '_AuthStore.setFoto');
    try {
      return super.setFoto(valor);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String valor) {
    final _$actionInfo =
        _$_AuthStoreActionController.startAction(name: '_AuthStore.setSenha');
    try {
      return super.setSenha(valor);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmarSenha(String valor) {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
        name: '_AuthStore.setConfirmarSenha');
    try {
      return super.setConfirmarSenha(valor);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
nome: ${nome},
email: ${email},
foto: ${foto},
senha: ${senha},
confirmarSenha: ${confirmarSenha},
loading: ${loading},
erro: ${erro},
cadastroSalvo: ${cadastroSalvo},
loginConcluido: ${loginConcluido},
nomeValido: ${nomeValido},
emailValido: ${emailValido},
senhaValida: ${senhaValida},
confirmarSenhaValido: ${confirmarSenhaValido},
formularioValido: ${formularioValido},
loginPressionado: ${loginPressionado}
    ''';
  }
}
