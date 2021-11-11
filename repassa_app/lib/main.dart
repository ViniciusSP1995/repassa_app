import 'package:flutter/material.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/sobre/sobre.dart';

import 'cadastro/cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repassa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        ),
      debugShowCheckedModeBanner: false,
      home: Cadastro(),
    );
  }
}
