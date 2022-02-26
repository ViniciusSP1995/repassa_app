import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/models/Tema.dart';
import 'package:repassa_app/stores/postagens_store.dart';
import 'package:repassa_app/stores/tema_store.dart';
import 'package:repassa_app/tema/tema_create.dart';

class ModalPostagem extends StatefulWidget {
  ModalPostagem(this.temaStore, this.postagemStore);

  final TemaStore temaStore;
  final PostagensStore postagemStore;

  @override
  _ModalPostagemState createState() => _ModalPostagemState();
}

class _ModalPostagemState extends State<ModalPostagem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child:  Padding(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
            child: Form(
                child: Column(children: [
              Text(
                "Nova Postagem",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF61297c),
                ),
              ),
              Divider(height: 50),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Escolha um tema:',
                        style: TextStyle(fontSize: 16))),
              ]),
              Observer(builder: (_) {
                return FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      isEmpty: false,
                      child: DropdownButtonHideUnderline(
                          child: Observer(
                        builder: (_) {
                        return DropdownButton(
                          hint: Text('Selecione um tema: '),
                          value: widget.postagemStore.tema,
                          isDense: true,
                          onChanged: (Tema? value) {
                            widget.postagemStore.tema = value;
                            print(widget.postagemStore.tema!.toJson());
                          },
                          items: widget.temaStore.allTemas.map((item) {
                            return new DropdownMenuItem(
                                child: Text(item.descricao!), value: item);
                          }).toList(),
                        );
                      })),
                    );
                  },
                );
              }),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Título', style: TextStyle(fontSize: 16))),
              ]),
              Observer(builder: (_) {
                return TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Digite um título'),
                  onChanged: widget.postagemStore.setTitulo,
                );
              }),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Texto', style: TextStyle(fontSize: 16))),
              ]),
              Observer(builder: (_) {
                return TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'O que você está pensando?'),
                  onChanged: widget.postagemStore.setTexto,
                );
              }),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Imagem', style: TextStyle(fontSize: 16))),
              ]),
              Observer(builder: (_) {
                return TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Adicione o link da sua imagem aqui',
                  ),
                  onChanged: widget.postagemStore.setImagem,
                );
              }),
              Row(
                children: [
                  SizedBox(
                      height: 50,
                      width: 160,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 8, 8),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TemaCreate()));
                            },
                            child: Text('Cadastrar novo tema',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0XFF61297c),
                            )),
                      )),
                ],
              ),
             Divider(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: 50,
                      width: 120,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancelar'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              )))),
                  SizedBox(
                      height: 50,
                      width: 120,
                      child: Observer(builder: (_) {
                        return Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                            child: ElevatedButton(
                                onPressed: () {
                                  widget.postagemStore.publicar();
                                  Navigator.of(context).pop();
                                },
                                child: Text('Publicar'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0XFF61297c),
                                )));
                      }))
                ],
              )
            ])
          ))
        );
  }
}
