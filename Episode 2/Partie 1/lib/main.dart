import 'package:flutter/material.dart';

void main() {
  runApp(Oreo());
}

class Oreo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Oreo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Titouan's tutorial app"),
        ),
        body: TextField(decoration: InputDecoration(hintText: "Username")),
      ),
    );
  }

  void boutonLoginAppuyer() {
    print("Le bouton a ete appuyer.");
  }
}
