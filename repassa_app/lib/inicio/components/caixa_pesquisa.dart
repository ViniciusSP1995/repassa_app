import 'package:flutter/material.dart';
import 'package:repassa_app/stores/postagens_store.dart';

class CaixaPesquisa extends StatelessWidget {
  const CaixaPesquisa(this.pesquisaAtual, this.controller, this.postagensStore);

  final String? pesquisaAtual;
  final TextEditingController? controller;
  final PostagensStore? postagensStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0),
        child: Card(
          elevation: 0,
            child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Buscar postagem por título',
            hintStyle: TextStyle(
              fontSize: 12
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              color: Colors.grey[700],
              onPressed: () {
                controller!.text = '';
                postagensStore!.pesquisa = controller!.text;
                postagensStore!.FindByTituloPostagem();
              },
            ),
          ),
          textInputAction: TextInputAction.search,
          onChanged: (pesquisaAtual) => {
            postagensStore!.pesquisa = pesquisaAtual,
            postagensStore!.FindByTituloPostagem(),
            print(postagensStore!.pesquisa)
          },
          autofocus: false,
        )
      )
    );
  }
}
