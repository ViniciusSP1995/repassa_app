import 'package:flutter/material.dart';

class Rodape extends StatefulWidget {
  const Rodape({Key? key}) : super(key: key);

  @override
  _RodapeState createState() => _RodapeState();
}

class _RodapeState extends State<Rodape> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Card(
        elevation: 10,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Text('Repassa',
                    style: TextStyle(
                      color: Color(0XFF61297c),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ))
              ]),
              SizedBox(height: 5),
              Text(
                  'Somos uma rede social criada com o propósito de dar novos significados a itens seminovos, como móveis, eletrodomésticos e roupas. Nosso objetivo é conectar pessoas que estão buscando por doações à pessoas procurando se desapegar de itens que não utilizam mais.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              SizedBox(height: 10),
              Divider(color: Color(0XFF61297c)),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      child: Text('DoAre',
                          style: TextStyle(
                            color: Color(0XFF61297c),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      onPressed: () {}),
                  SizedBox(width: 20),
                  TextButton(
                      child: Text('Equipe',
                          style: TextStyle(
                            color: Color(0XFF61297c),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      onPressed: () {}),
                  SizedBox(width: 20),
                  TextButton(
                      child: Text('Contato',
                          style: TextStyle(
                            color: Color(0XFF61297c),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      onPressed: () {}),
                ],
              ),
              Divider(color: Color(0XFF61297c)),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Acesse nossas redes sociais!',
                          style: TextStyle(
                            color: Color(0XFF61297c),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    InkWell(
                        child: Image.asset('images/instagram.jpg',
                            height: 50, width: 50),
                        onTap: () {}),
                    SizedBox(width: 10),
                    GestureDetector(
                        child: Image.asset('images/facebook.jpg',
                            height: 50, width: 50),
                        onTap: () {}),
                    SizedBox(width: 10),
                    GestureDetector(
                        child: Image.asset('images/github.jpg',
                            height: 50, width: 50),
                        onTap: () {})
                  ]
                  )
                  
                ]),
              ),
              ],)
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(children: [
                    Text(
                      'Notícias',
                      style: TextStyle(
                          color: Color(0XFF61297c),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ]),
                  SizedBox(height: 5),
                  Row(children: [
                    Text('Fique por dentro de nossas atualizações',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                  ]),
                  SizedBox(height: 5),
                  SizedBox(
                      height: 40,
                      child: TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.purple)),
                      ))),
                  Row(children: [
                    ElevatedButton.icon(
                      label: Text('Enviar',
                          style: TextStyle(
                            color: Color(0XFF61297c),
                          )),
                      icon: Icon(Icons.send, color: Color(0XFF61297c)),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0XFFfedc18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Color(0XFF61297c)),
                          )),
                    ),
                  ])
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 50,
        width: 400,
        child: Container(
            color: Colors.yellow[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('© 2021 Copyright ',
                    style: TextStyle(
                      color: Colors.white,
                )
              ),
              ],
            )),
      )
    ]);
  }
}
