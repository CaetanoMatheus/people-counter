import 'package:flutter/material.dart';

void main() => runApp(PeopleCounter());

class PeopleCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'People Counter',
      debugShowCheckedModeBanner: false,
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pessoas: 0',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Text(
                  '+1',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  '-1',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'Pode entrar!',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
