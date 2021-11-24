import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:repassa_app/home/home.dart';
import 'package:repassa_app/inicio/inicio.dart';
import 'package:repassa_app/login/login.dart';
import 'package:repassa_app/models/UserLogin.dart';
import 'package:repassa_app/sobre/sobre.dart';
import 'package:repassa_app/tema/tema_create.dart';

import 'cadastro/cadastro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  setupLocators();
  runApp(MyApp());
}

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
      home: Home(),
    );
  }
}

void setupLocators() {
  GetIt.I.registerSingleton(UserLogin());
}
