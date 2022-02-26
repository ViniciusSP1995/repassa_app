import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/stores/auth_store.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Color(0XFF61297c)),
      toolbarHeight: 120,
      floating: true,
      snap: true,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                    label: Text(
                      dotenv.env['token'] == '' ? 'Entrar' : 'Sair',
                      style: TextStyle(
                        color: Color(0XFF61297c),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0XFFfedc18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: Color(0XFF61297c)),
                        )),
                    icon: Icon(
                      Icons.login,
                      color: Colors.purple,
                      size: 16,
                    ),
                    onPressed: dotenv.env['token'] == ''
                        ? () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          }
                        : () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                            dotenv.env['id'] = '';
                            dotenv.env['token'] = '';
                            dotenv.env['nome'] = '';
                            dotenv.env['foto'] = '';

                          })))
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
            height: 110,
            child: Image.network('https://i.imgur.com/5KOEUob.png')),
      ),
    );
  }
}
