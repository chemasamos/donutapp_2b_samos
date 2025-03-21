import "package:donutapp_2b_samos/utils/pancake_tile.dart";
import "package:flutter/material.dart";

class PancakeTab extends StatelessWidget {

  final List pancakeOnSale = [
    // [pancakeFlavor, pancakeStore, pancakePrice, pancakeColor, imageName]
    ["FroggyMugged","Cantaritos","20",Colors.pinkAccent, "lib/images/frogg_pancake.png"],
    ["All clasic","Colom","120",Colors.blueGrey,  "lib/images/frutita_pancake.png"],
    ["Absolut", "Donde","15",Colors.pink, "lib/images/mieleros_pancake.png"],
    ["Piketito","Mixe","90",Colors.purple, "lib/images/morero_pancake.png"],
    ["Normales","Kukis","70",Colors.yellow, "lib/images/normales_pancake.png"],
    ["Roblox","Vans","37",Colors.blue,  "lib/images/roblo_pancake.png"],
    ["Rockk", "HXDERBEZ","10",Colors.brown, "lib/images/rock_pancake.png"],
    ["BunnyBun","lol","95",Colors.grey, "lib/images/bun_pancake.png"],
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      padding: const EdgeInsets.all(7.0),
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
