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
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Username"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: boutonLoginAppuyer,
                  child: Text("Login"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    print("Le bouton continuer en tant qu'invité a été appuyer!");
                  },
                  child: Text("Continuer en tant qu'invité"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void boutonLoginAppuyer() {
    print("Le bouton a ete appuyer.");
  }
}
