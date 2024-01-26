import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ajedrez')),
        body: Table(
          children: [
            TableRow(children: [
              ajedrezCell(false),
              ajedrezCell(true),
              ajedrezCell(false),
              ajedrezCell(true),
            ]),
            TableRow(children: [
              ajedrezCell(true),
              ajedrezCell(false),
              ajedrezCell(true),
              ajedrezCell(false),
            ]),
            TableRow(children: [
              ajedrezCell(false),
              ajedrezCell(true),
              ajedrezCell(false),
              ajedrezCell(true),
            ]),
            TableRow(children: [
              ajedrezCell(true),
              ajedrezCell(false),
              ajedrezCell(true),
              ajedrezCell(false),
            ]),
          ],
        ),
      ),
    );
  }

  Widget ajedrezCell(bool isBlack) {
    return Container(
      width: 150,
      height: 150,
      color: isBlack ? Colors.black : Colors.white,
    );
  }
}
