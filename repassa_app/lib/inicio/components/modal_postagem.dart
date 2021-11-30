import 'package:flutter/material.dart';
import 'package:repassa_app/stores/tema_store.dart';
import 'package:repassa_app/tema/tema_create.dart';

class ModalPostagem extends StatefulWidget {
  @override
  _ModalPostagemState createState() => _ModalPostagemState();
}

class _ModalPostagemState extends State<ModalPostagem> {

  TemaStore temaStore = TemaStore();
  
  var items = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Padding(
            padding: EdgeInsets.all(50),
            child: Form(
                child: Column(
              children: [
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
              FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                    isEmpty: false,
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                      value: value,
                      isDense: true,
                      onChanged: (value) => setState(() => this.value = value),
                      items: items.map(buildMenuItem).toList(),
                    )),
                  );
                },
              ),
              SizedBox(height: 20),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Título', style: TextStyle(fontSize: 16))),
              ]),
              TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Digite um título')),
              SizedBox(height: 20),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Texto', style: TextStyle(fontSize: 16))),
              ]),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'O que você está pensando?'),
              ),
              SizedBox(height: 20),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Imagem', style: TextStyle(fontSize: 16))),
              ]),
              TextField(
                  decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Adicione o link da sua imagem aqui',
              )),
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
              Divider(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: 50,
                      width: 120,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 8, 8),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancelar'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              )))),
                  SizedBox(
                      height: 50,
                      width: 120,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 8, 8),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Publicar'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0XFF61297c),
                              ))))
                ],
              )
            ]))));
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(item,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)));
