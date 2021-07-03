import 'package:flutter/material.dart';
import 'theme.dart';

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
        //resizeToAvoidBottomInset : false, OR WRAP SingleChildScrollView
        appBar: AppBar(
          title: Text("Titouan's tutorial app"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 45),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Username"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: boutonLoginAppuyer,
                  child: Text("Login"),
                ),
                Column(
                  children: [
                    Divider(thickness: 1.5),
                    Padding(padding: EdgeInsets.all(8), child: Text("OU")),
                    Divider(thickness: 1.5),
                  ],
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Nom"),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("Le bouton continuer en tant qu'invité a été appuyer!");
                  },
                  child: Text("Continuer en tant qu'invité"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void boutonLoginAppuyer() {
    print("Le bouton a ete appuyer.");
  }
}
