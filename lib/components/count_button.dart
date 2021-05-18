import 'package:flutter/material.dart';
import 'package:contador_pessoas/constants.dart';

class CountButton extends StatelessWidget {
  final String texto;
  final Function pressedButton;

  CountButton({@required this.texto, this.pressedButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressedButton,
      child: Text(texto, style: kTextCountButtonStyle),
    );
  }
}
