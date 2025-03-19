import 'package:donutapp_2b_samos/tabs/burger_tab.dart';
import 'package:donutapp_2b_samos/tabs/donut_tab.dart';
import 'package:donutapp_2b_samos/tabs/pancakes_tab.dart';
import 'package:donutapp_2b_samos/tabs/pizaa_tab.dart';
import 'package:donutapp_2b_samos/tabs/smoothie_tab.dart';
import 'package:donutapp_2b_samos/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de tabs
  List<Widget> myTabs = [
    //pizza Tab
    MyTab(iconPath: 'lib/icons/pizza.png'),
    //BurgerTab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //SmoothieTab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //PancakeTab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    //DonutTab
    MyTab(iconPath: 'lib/icons/donut.png'),
    ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // icono izquierdo
          leading: Icon(
            Icons.menu,
            color: Colors.pinkAccent[800],
          ),
          // Icono derecho
          actions: const[Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )]
        ),
        body: Column(
          children: [
          // texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: const[
                  Text("I want to ", style: TextStyle(fontSize: 32 )),
                  Text("Tragar", style: TextStyle(
                  // Letra tamaño
                    fontSize: 32,
                  // Negritas
                  fontWeight: FontWeight.bold,
                  // Subrayado
                  decoration: TextDecoration.underline))
                  ],
              ),
            ),
          // tabBar
          TabBar(tabs: myTabs),
          //tabBarview
          Expanded(
            child: TabBarView(children: [
            PizzaTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakesTab(),
            DonutTab()
            ]),
          ),
          //carrito
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Row(
              // Poner los elementos en los extremos de la fila
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Column(
                    //Alinearlo a la izquierda
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('2 Item | \$45',
                      style: TextStyle(
                        //Tamaño
                        fontSize: 18,
                        //Negritas
                        fontWeight: FontWeight.bold

                       ),
                      ),
                      Text('ya con gasto de envio bro',
                      style: TextStyle(
                        fontSize: 12,),
                      ),
                    ],
                  )),
                  ElevatedButton(
                    onPressed:() {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[70],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12
                    )),
                    child: const Text('Carrito lokita',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    )
                  )
              ],
            ),
          ),
          ],
        )
      ),
    );
  }
}