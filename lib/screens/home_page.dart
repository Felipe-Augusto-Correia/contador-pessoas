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
  int _people = 0;
  String infoText = 'Pode Entrar!';

  void _changePeople(int n) {
    _people += n;
    if (_people < 0) {
      infoText = 'Mundo invertido?';
    } else if (_people <= 10) {
      infoText = 'Pode Entrar!';
    } else {
      infoText = 'Lotado';
    }
  }

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
              'Pessoas: $_people',
              style: kTextCountStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CountButton(
                    texto: '+1',
                    pressedButton: () {
                      setState(() {
                        _changePeople(1);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CountButton(
                    texto: '-1',
                    pressedButton: () {
                      setState(() {
                        _changePeople(-1);
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(infoText, style: kTextCountButtonStyle),
          ],
        ),
      ],
    );
  }
}
