import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb; //função para saber qual tecla foi pressionada
  Keyboard(this.cb); //construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          Button_row(
            [
              pressionada.big(text: 'AC', color: pressionada.DARK, cb: cb),
              //Button(text: '', cb: cb),

              //pressionada.operation vem da class button assim como os demais para mudar a cor dos botoes
              pressionada.operation(text: '/', cb: cb),
            ],
          ),
          SizedBox(height: 1), //espaço entre as teclas
          Button_row(
            [
              pressionada(
                  text: '1', cb: cb), //fução cb recebendo valor de variável cb
              pressionada(text: '2', cb: cb),
              pressionada(text: '3', cb: cb),
              pressionada.operation(text: 'X', cb: cb),
            ],
          ),
          SizedBox(height: 1),
          Button_row(
            [
              pressionada(text: '4', cb: cb),
              pressionada(text: '5', cb: cb),
              pressionada(text: '6', cb: cb),
              pressionada.operation(text: '-', cb: cb),
            ],
          ),
          SizedBox(height: 1),
          Button_row(
            [
              pressionada(text: '7', cb: cb),
              pressionada(text: '8', cb: cb),
              pressionada(text: '9', cb: cb),
              pressionada.operation(text: '+', cb: cb),
            ],
          ),
          SizedBox(height: 1),
          Button_row(
            [
              pressionada(text: '0', cb: cb),
              pressionada(text: '.', cb: cb),
              pressionada.operation(text: '=', cb: cb),
            ],
          ),
        ],
      ),
    );
  }
}
