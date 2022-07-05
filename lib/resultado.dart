import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'burro';
    } else {
      return 'brabo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 25),
        ),
      ),
      FlatButton(
        onPressed: quandoReiniciarQuestionario,
        child: Text(
          'Reiniciar',
          style: TextStyle(
            fontSize: 18
          ),
        ),
        textColor: Colors.blue,
      )
    ]);
  }
}
