import 'package:flutter/material.dart';
import 'themes.dart';

void main() {
  runApp(MaterialApp(
    theme: Themes().theme1,
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recettes"),
      ),
      body: Column(
        children: [
          Text(
            "Choisissez une recette pour la découvrir",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
