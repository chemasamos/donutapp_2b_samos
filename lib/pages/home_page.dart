import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // icono izquierdo
        leading: Icon(
          Icons.menu,
          color: Colors.pinkAccent[800],
        ),
        // Icono derecho
        actions: [Icon(Icons.person)]
      ),
    );
  }
}