import 'package:flutter/material.dart';

class Menulis extends StatelessWidget {
  const Menulis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saya Tahu Menulis", style: TextStyle(fontSize: 15),),
        backgroundColor: Colors.blue[900],
        foregroundColor: Color.fromARGB(255, 169, 214, 240),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 194, 211, 227),
      body: Center(
        child: Text("Aku Suka Menulis"),
      ),
    );
  }
}
