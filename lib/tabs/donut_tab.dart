import 'package:donutapp_2b_samos/utils/donut_tile.dart'; // Mantén solo una importación válida
import 'package:flutter/material.dart';


class DonutTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
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

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
