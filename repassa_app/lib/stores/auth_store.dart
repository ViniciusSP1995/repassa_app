import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx/mobx.dart';
import 'package:repassa_app/models/User.dart';
import 'package:repassa_app/models/UserLogin.dart';
import 'package:repassa_app/services/AuthService.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  @observable
  User? user;

  @observable
  String? nome;

  @action
  void setNome(String valor) => nome = valor;

  @computed
  bool get nomeValido => nome != null && nome!.length > 6;

  String? get nomeErro {
    if (nome == null || nomeValido) {
      return null;
    } else if (nome!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }

  @observable
  String? email;

  @action
  void setEmail(String valor) => email = valor;

  @computed
  bool get emailValido => email != null;

  String? get emailErro {
    if (email == null || emailValido) {
      return null;
    } else if (email!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'E-mail inválido';
    }
  }

  @observable
  String? foto;

  @action
  void setFoto(String valor) => foto = valor;

  @observable
  String? senha;

  @action
  void setSenha(String valor) => senha = valor;

  @computed
  bool get senhaValida => senha != null && senha!.length >= 6;

  String? get senhaErro {
    if (senha == null || senhaValida) {
      return null;
    } else if (senha!.isEmpty) {
      return 'Campo Obrigatório';
    } else {
      return 'Senha muito curta';
    }
  }

  @observable
  String? confirmarSenha;

  @action
  void setConfirmarSenha(String valor) => confirmarSenha = valor;

  @computed
  bool get confirmarSenhaValido =>
      confirmarSenha != null && confirmarSenha == senha;

  String? get confirmarSenhaErro {
    if (confirmarSenha == null || confirmarSenhaValido) {
      return null;
    } else {
      return 'Senhas não coincidem';
    }
  }

  @computed
  bool get formularioValido =>
      nomeValido && emailValido && senhaValida && confirmarSenhaValido;

  /*@computed
  Function? get cadastrarPressionado =>
      (formularioValido && !loading) ? _cadastrar : () {};*/

  @computed
  Function? get loginPressionado =>
      emailValido && senhaValida && !loading ? _login : () {};

  /*@computed
  Function? get atualizarPressionado =>
      formularioValido && !loading ? _atualizar : () {};*/

  @observable
  bool loading = false;

  @observable
  String? erro;

  @observable
  bool? cadastroSalvo;

  @observable
  bool loginConcluido = false;

  @action
  Future GetByIdUser(int id) async {
    user = await AuthService().getByIdUser(id);

    print('++++++++++++++++${user!.toJson()}++++++++++++++++++');
    return user;
  }

  @action
  Future<void> cadastrar() async {
    loading = true;

    cadastroSalvo = true;

    final user = User(
      nome: nome,
      email: email,
      foto: foto,
      senha: senha,
    );

    await AuthService().cadastrar(user);

    loading = false;
  }

  @action
  Future<void> _login() async {
    loading = true;

    final userLogin = UserLogin(
      email: email,
      senha: senha,
    );

    await AuthService().entrar(userLogin);

    if (dotenv.env['id']!.isEmpty) {
      loginConcluido = false;
      erro = 'Usuário ou senha incorreta. Tente novamente';
    } else {
      loginConcluido = true;
    }
  }

  @action
  Future<void> atualizar() async {
    final user = User(
      id: this.user!.id,
      nome: nome,
      email: email,
      foto: foto,
      senha: senha,
    );

    await AuthService().cadastrar(user);

    dotenv.env['token'] = '';
    dotenv.env['nome'] = '';
    dotenv.env['id'] = '';
    dotenv.env['foto'] = '';

    print('TESTE');
  }
}
