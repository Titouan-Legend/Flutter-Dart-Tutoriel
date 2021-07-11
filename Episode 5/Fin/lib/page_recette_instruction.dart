import 'package:flutter/material.dart';

class RecetteInstructionPage extends StatelessWidget {
  RecetteInstructionPage(this.nomRecettes);

  final String nomRecettes;

  bool? like;

  final recettes = {
    "Lasagnes":
        "1. Coupez les carottes en petit bouts.\n2. Ajoutez de la pates a lasagne.\n3. Ajoutez du boeuf, de l'agneau et du poulet.\n4. Coupez des tomates puis écraser les pour faire de la sauce tomate.\n5 Mettez le tout dans le four en oubliant pas le fromage!",
    "Cocktail sans alcool":
        "1.Prenez du lait, rajoutez de la glace pillée, du cocacola, du sirop de peche.\n2.Mélanger le tout tel un barman expérimenté.\n3. Déguster!",
    "Pates natures":
        "1. Mettez de l'eau dans une casserole avec du sel.\n2. Remplissez la casserole de pattes.\n3. Mettez l'eau a bouillir. \n4. Laissez mijoter dans l'eau bouillante pendant 1 à 3 heures.\n5. Déguster!"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, like);
          },
        ),
        title: Text(nomRecettes),
      ),
      body: Column(
        children: [
          Text(recettes[nomRecettes]!),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    like = true;
                  },
                  child: Icon(Icons.thumb_up)),
              TextButton(
                  onPressed: () {
                    like = false;
                  },
                  child: Icon(Icons.thumb_down)),
            ],
          )
        ],
      ),
    );
  }
}
