import "package:donutapp_2b_samos/utils/pancake_tile.dart";
import "package:flutter/material.dart";

class PancakeTab extends StatelessWidget {

  final List pancakeOnSale = [
    // [pancakeFlavor, pancakeStore, pancakePrice, pancakeColor, imageName]
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakeStore: pancakeOnSale[index][1],
          pancakePrice: pancakeOnSale[index][2],
          pancakeColor: pancakeOnSale[index][3],
          imageName: pancakeOnSale[index][4],
        );
      },
    );
  }
}
