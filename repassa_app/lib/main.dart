import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:repassa_app/delete/postagem_delete/postagem_delete.dart';
import 'package:repassa_app/stores/postagens_store.dart';
import 'package:repassa_app/stores/tema_store.dart';

import 'home/home.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(TemaStore());
  GetIt.I.registerSingleton(PostagensStore());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repassa',
      theme: ThemeData(
          primaryColor: Color(0XFF6C3C73),
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Color(0XFF6C3C73),
          )),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
