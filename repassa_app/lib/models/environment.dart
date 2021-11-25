import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {


  static String get nome => _get('nome');
  static String get token => _get('token');
  static String get foto => _get('foto');
  static int get id => _getInt('id');

  static String _get(String name) => DotEnv().env[name] ?? '';
  static int _getInt(String name) => int.parse(DotEnv().env[name] ?? '');

}