import 'package:flutter/material.dart';

class pressionada extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  static const VAZIO = Color.fromARGB(255, 44, 44, 44);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb; //função para saber qual tecla foi pressionada

  pressionada({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb, //determina que cb e requirido
  });


  pressionada.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb, //determina que cb e requirido
  });


  pressionada.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb, //determina que cb e requirido
  });

  // Button.vazio({
  //   required this.text,
  //   this.big = false,
  //   this.color = VAZIO,
  //   required this.cb,
  // });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 3 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        onPressed: () => cb(text), //Ao pressionar chama a função cb
      ),
    );
  }
}
