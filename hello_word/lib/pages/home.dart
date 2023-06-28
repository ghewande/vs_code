import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int day = 30;
  final String name = "Kiran";

  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalgitog App"),
      ),
      body: Center(
        child: Text("Welcome to $day days of Flutter $name"),
      ), 
      drawer: const Drawer(),
    );
  }
}
