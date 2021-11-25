class UserLogin {
  UserLogin(
      {this.id, this.nome, this.email, this.senha, this.token, this.foto});

  num? id;
  String? nome;
  String? email;
  String? senha;
  String? token;
  String? foto;


  factory UserLogin.fromMap(Map userLoginMap) {
    return UserLogin(
      nome: userLoginMap['nome'],
      email: userLoginMap['email'],
      senha: userLoginMap['senha'],
      token: userLoginMap['token'],
      foto: userLoginMap['foto'],
      
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'email': email,
      'senha': senha,
      'token': token,
      'foto': foto,
    };
  }
}
