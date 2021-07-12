import 'package:flutter/material.dart';

import 'customTextField.dart';

class LoginColone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginColoneState();
  }
}

class _LoginColoneState extends State<LoginColone> {
  String password = "";
  String username = "";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Login",
        style: TextStyle(fontSize: 45),
      ),
      CustomTextField(
        hintText: "Username",
        padding: EdgeInsets.symmetric(vertical: 15),
        longueurMaximale: 20,
        longueurMinimale: 3,
        valueSet: (valid, texteEntre) {
          setState(() {
            username = texteEntre;
          });
        },
      ),
      CustomTextField(
          padding: EdgeInsets.only(bottom: 45),
          hintText: "Password",
          obscure: true,
          longueurMinimale: 5,
          longueurMaximale: 14,
          valueSet: (valid, textEntre) {
            setState(() {
              password = textEntre;
            });
          }),
      ElevatedButton(
        onPressed: boutonLoginAppuyer,
        child: Text("Login"),
      ),
      Text(username),
      Text(password),
    ]);
  }

  void boutonLoginAppuyer() {
    print("bouton login appuyé");
  }
}
