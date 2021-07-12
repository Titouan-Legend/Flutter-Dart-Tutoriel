import 'package:flutter/material.dart';
import 'package:tuto_flutter_installation/login_colone.dart';
import 'themes.dart';
import 'customTextField.dart';

void main() {
  runApp(Oreo());
}

class Oreo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes().theme1,
      title: "Oreo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Titouan's tutorial app"),
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(30), child: construireColonePrincipale()),
        ),
      ),
    );
  }

  Widget construireColonePrincipale() {
    return Column(
      children: [
        LoginColone(),
        Row(
          children: [
            Expanded(child: Divider(thickness: 1.5)),
            Padding(padding: EdgeInsets.all(8), child: Text("OU")),
            Expanded(child: Divider(thickness: 1.5)),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            print("Le bouton continuer en tant qu'invité a été appuyer!");
          },
          child: Text("Continuer en tant qu'invité"),
        ),
      ],
    );
  }
}
