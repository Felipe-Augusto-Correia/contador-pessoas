import 'package:contador_pessoas/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contador_pessoas/components/count_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pessoas: 0',
              style: kTextCountStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CountButton(texto: '+1'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CountButton(texto: '-1'),
                ),
              ],
            ),
            Text('Pode Entrar!', style: kTextCountButtonStyle),
          ],
        ),
      ],
    );
  }
}
