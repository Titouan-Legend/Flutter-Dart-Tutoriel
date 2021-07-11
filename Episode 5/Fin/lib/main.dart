import 'package:flutter/material.dart';
import 'themes.dart';
import 'page_recette_instruction.dart';

void main() {
  runApp(MaterialApp(
    theme: Themes().theme1,
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  final recettes = ["Lasagnes", "Cocktail sans alcool", "Pates natures"];

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
          Expanded(
            child: ListView.builder(
              itemCount: recettes.length,
              itemBuilder: (context, index) {
                return Padding(
                  child: ElevatedButton(
                    onPressed: () {
                      _montrerRecette(context, recettes[index]);
                    },
                    child: Text(recettes[index]),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _montrerRecette(BuildContext context, String nomRecette) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RecetteInstructionPage(nomRecette);
    }));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(result.toString())));
  }
}
