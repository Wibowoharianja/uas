import 'package:flutter/material.dart';
import 'package:frontend/home.dart';
import 'package:frontend/profile.dart';
import 'package:frontend/verifikasi%20tingkatan.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int _index = 0;
  List _screen = [Homescrean(), Verifikasi(), Profil()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        currentIndex: _index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school_rounded,
                size: 35,
              ),
              label: 'Study'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
                size: 35,
              ),
              label: 'Profil'),
        ],
        onTap: (value) {
          setState(() {
            print(value);
            _index = value;
          });
        },
      ),
    );
  }
}
