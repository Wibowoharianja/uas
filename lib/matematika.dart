import 'package:flutter/material.dart';

class Matematika extends StatelessWidget {
  const Matematika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senang Matematika", style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 54, 107, 160),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Aku Suka Matematika"),
      ),
    );
  }
}