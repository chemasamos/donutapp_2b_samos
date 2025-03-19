import "package:donutapp_2b_samos/utils/burger_tile.dart";
import "package:flutter/material.dart";

 class BurgerTab extends StatelessWidget {


  final List burgerOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerStore: burgerOnSale[index][1],
          burgerPrice: burgerOnSale[index][2],
          burgerColor: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
        );
      },
    );
  }
}
