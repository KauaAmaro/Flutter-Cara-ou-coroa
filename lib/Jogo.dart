import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Resultado.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  void _exibiResultado(){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Resultado()
      ),
    );


  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget> [
            Image.asset("img/logo.png"),
            GestureDetector(
              onTap: _exibiResultado,
              child: Image.asset("img/botao_jogar.png"),
            )
          ],
        ),


      ),

    );
  }
}
