import 'package:flutter/material.dart';

void main() => runApp(PeopleCounter());

class PeopleCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'People Counter',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = 'Pode entrar!';

  void _changePeople(int delta) {
    setState(() {
      this._people += delta;
      if (this._people < 0) return this._infoText = 'Mundo Invertido?';
      if (this._people < 10) return this._infoText = 'Pode entrar!';
      if (this._people >= 10) return this._infoText = 'Lotado!';
    });
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
              'Pessoas: ${this._people}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    onPressed: () {
                      this._changePeople(1);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      '-1',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    onPressed: () {
                      this._changePeople(-1);
                    },
                  ),
                ],
              ),
            ),
            Text(
              this._infoText,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
