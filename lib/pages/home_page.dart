import 'package:donutapp_2b_samos/tabs/burger_tab.dart';
import 'package:donutapp_2b_samos/tabs/donut_tab.dart';
import 'package:donutapp_2b_samos/tabs/pancake_tab.dart';
import 'package:donutapp_2b_samos/tabs/pizza_tab.dart';
import 'package:donutapp_2b_samos/tabs/smoothie_tab.dart';
import 'package:donutapp_2b_samos/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemCount = 0; // Cantidad de ítems
  double totalPrice = 0.0; // Precio total

  // Función para agregar un ítem
  void addItem(double price) {
    setState(() {
      itemCount++;
      totalPrice += price;
    });
  }

  // Lista de tabs
  List<Widget> myTabs = [
    MyTab(iconPath: 'lib/icons/pizza.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/donut.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.pinkAccent[800],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: const [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text("Tragar",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ),
            // TabBar
            TabBar(tabs: myTabs),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  PizzaTab(onAdd: addItem),
                  BurgerTab(onAdd: addItem),
                  SmoothieTab(onAdd: addItem),
                  PancakeTab(onAdd: addItem),
                  DonutTab(onAdd: addItem),
                ],
              ),
            ),
            // Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$itemCount Item | \$${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('ya con gasto de envio bro',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[70],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Text('Carrito lokita',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}