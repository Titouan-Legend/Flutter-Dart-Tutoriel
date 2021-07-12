import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {this.padding = EdgeInsets.zero,
      this.hintText = "",
      this.obscure = false,
      this.longueurMaximale,
      this.longueurMinimale,
      this.valueSet});

  void Function(bool valid, String textEntre)? valueSet;
  EdgeInsets padding;
  String hintText;
  bool obscure;
  int? longueurMinimale;
  int? longueurMaximale;

  @override
  State<StatefulWidget> createState() {
    return _CustomTextFieldState();
  }
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorMessage;

  void userSubmittedText(String texteEntre) {
    setState(() {
      errorMessage = null;
    });
    if (widget.longueurMinimale != null) {
      if (texteEntre.length < widget.longueurMinimale!) {
        // Trop petit.
        setState(() {
          errorMessage = "Veuillez entrez plus de ${widget.longueurMinimale} charactères pour ce champ.";
        });
        print(errorMessage);
      }
    }

    if (widget.longueurMaximale != null) {
      if (texteEntre.length > widget.longueurMaximale!) {
        setState(() {
          errorMessage = "Veuillez entrez moins de ${widget.longueurMaximale} charactères pour ce champ.";
        });
      }
    }

    if (widget.valueSet != null) {
      // On peux appeler la fonction.
      widget.valueSet!((errorMessage == null), texteEntre);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextField(
        decoration: InputDecoration(hintText: widget.hintText, errorText: errorMessage),
        obscureText: widget.obscure,
        onSubmitted: userSubmittedText,
      ),
    );
  }
}
