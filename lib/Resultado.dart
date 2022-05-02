// Criação Kauã Amaro

import 'dart:math';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado({Key? key}) : super(key: key);


  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {


  var _imagemApp = AssetImage("") ;
  var Image1 = AssetImage("img/moeda_cara.png");
  var Image2 = AssetImage("img/moeda_coroa.png");

  @override
  Widget build(BuildContext context) {

    var moeda = ["cara", "coroa"];
    var decicao = Random().nextInt(moeda.length);
    var escolha = moeda[decicao];

    switch (escolha){
      case "cara":
        setState(() {
          this._imagemApp = Image1;
        });
        break;

      case "coroa":
        setState(() {
          this._imagemApp = Image2;
        });
        break;

    }


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget> [
            Image(image: this._imagemApp,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("img/botao_voltar.png"),
            )
          ],
        ),


      ),

    );
  }
}


