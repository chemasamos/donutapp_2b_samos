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
    //Ct Tab
    MyTab(iconPath: 'lib/icons/corrido.png'),
    //BurgerTab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //SmoothieTab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //PancakeTab
    MyTab(iconPath: 'lib/icons/pancake.png'),
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
          TabBar(tabs: myTabs)
          //tabBarview
      
          //carrito
          ],
        )
      ),
    );
  }
}