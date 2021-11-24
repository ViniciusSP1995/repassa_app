import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repassa_app/componentes/drawer_customizado/drawer_customizado.dart';
import 'package:repassa_app/componentes/menu.dart';
import 'package:repassa_app/stores/criar_tema_store.dart';


class TemaCreate extends StatefulWidget {

  @override
  _TemaCreateState createState() => _TemaCreateState();
}

class _TemaCreateState extends State<TemaCreate> {

  final CriarTemaStore criarTemaStore = CriarTemaStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: DrawerCustomizado(),
       body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                Menu(),
                SliverToBoxAdapter(
                child: Column(
                children: [
                Text(
                'Temas',
                style: TextStyle(
                  color: Color(0XFF61297c),
                  fontSize: 26
                )
              ),
              Padding(
              padding: EdgeInsets.fromLTRB(40,10,40,10),
              child: Text(
                'Veja aqui todos os temas cadastrados ou cadastre novos:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              )
              ),
             
                
              
              Padding(
              padding: EdgeInsets.fromLTRB(40,10,40,15),
              child: Observer(
              builder: (_) {
              return TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite a descrição do tema',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                onChanged: criarTemaStore.setDescricao,
              );
              })
              ),
              SizedBox(
                child: Observer(
                  builder: (_) {
                return ElevatedButton( 
                  child: Text('Cadastrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0XFF61297c),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: criarTemaStore.publicar
                );
                }
                )         
              ),
                SizedBox(height: 20),
                Text(
                'Todos os temas',
                style: TextStyle(
                  color: Color(0XFF61297c),
                  fontSize: 26
                )
              ),
              Padding(
              padding: EdgeInsets.fromLTRB(0,40,40,10),
              child: Table(
                border: TableBorder(
                  horizontalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0
                  )
                ),
                children: [
                  TableRow(
                    children: [ 
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'id',
                          style: TextStyle (
                            fontSize: 16,
                          ) ,
                        )
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Descrição do tema',
                          style: TextStyle (
                            fontSize: 16,
                          ) ,
                        )
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Modificações',
                          style: TextStyle (
                            fontSize: 16,
                          ) ,
                        )
                      ),

                    ]
                  ),/*
                  TableRow(

                  )*/
                ],
              ),
              )
              ]
              )
              )
              ]
          )
          ]
        )
       );
  }
}