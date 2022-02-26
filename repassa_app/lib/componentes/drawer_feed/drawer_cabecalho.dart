import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DrawerCabecalho extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 95,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        dotenv.env['foto'] == '' ? Icon(
            Icons.person,
            color: Colors.white,
            size: 70
            ) : ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 80,
                height: 80,
                child: Image.network('${dotenv.env['foto']}'),
              )
            ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
            'Olá, ${dotenv.env['nome']}',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
          
          )
        ],
      )
    );
  }
}

