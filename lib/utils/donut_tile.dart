import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;
  const DonutTile 
  ({super.key, required this.donutFlavor,required this.donutStore, required this.donutPrice, this.donutColor, required this.imageName,});

  @override
  Widget build(BuildContext context) {  
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[100], 
          borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //PriceTag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24))),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text('\$$donutPrice',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: donutColor[800])),
                ),
              ],
              ),
            //DonutPic
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName)),
            //DonutText
            Text(donutFlavor,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20)),

            const SizedBox(
              height: 4,
            ),
            //Agregar el texto de la tienda
            Text(donutStore,
            style: TextStyle(
            fontSize: 17)),
            //LoveIconAddButton
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border,
                  color: Colors.black,
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                    ),
                ],
              ),
            )
        ],
        ),
      ),
    );
  }
}