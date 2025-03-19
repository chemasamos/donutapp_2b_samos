import "package:donutapp_2b_samos/utils/pizza_tile.dart";
import "package:flutter/material.dart";

class PizzaTab extends StatelessWidget {

  final List pizzaOnSale = [
    // [pizzaFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName]
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
        );
      },
    );
  }
}