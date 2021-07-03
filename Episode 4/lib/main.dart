import 'package:flutter/material.dart';
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

  void boutonLoginAppuyer() {
    print("Le bouton a ete appuyer.");
  }

  Widget construireColonePrincipale() {
    return Column(
      children: [
        Text(
          "Login",
          style: TextStyle(fontSize: 45),
        ),
        CustomTextField(hintText: "Username", padding:EdgeInsets.symmetric(vertical: 15), longueurMaximale: 20, longueurMinimale: 3),
        CustomTextField(
          padding: EdgeInsets.only(bottom: 45),
          hintText: "Password",
          obscure: true,
          longueurMinimale: 5,
          longueurMaximale: 14,
          valueSet: (valid, textEntre) {
            print(textEntre);
          }
        ),
        ElevatedButton(
          onPressed: boutonLoginAppuyer,
          child: Text("Login"),
        ),
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
