import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:repassa_app/componentes/drawer_feed/drawer_info.dart';
import 'package:repassa_app/edit/user_edit/user_edit.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/stores/auth_store.dart';

class DrawerSecao extends StatelessWidget {
  DrawerSecao({Key? key}) : super(key: key);

  AuthStore authStore = AuthStore();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DrawerInfo(
        descricao: 'Início',
        icone: Icons.home,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Inicio())
          );
        },
      ),
      DrawerInfo(
        descricao: 'Perfil',
        icone: Icons.person,
        onTap: () {},
      ),
      DrawerInfo(
        descricao: 'Editar Perfil',
        icone: Icons.edit_note,
        onTap: () async {
          await authStore.GetByIdUser(int.parse(dotenv.env['id'].toString()));
          authStore.nome = authStore.user!.nome;
          authStore.email = authStore.user!.email;
          authStore.foto = authStore.user!.foto;
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserEdit(authStore.user!, authStore)));
        },
      ),
      DrawerInfo(
        descricao: 'Amigos',
        icone: Icons.people,
        onTap: () {},
      ),
      DrawerInfo(
        descricao: 'Configurações',
        icone: Icons.settings,
        onTap: () {},
      ),
    ]);
  }
}
