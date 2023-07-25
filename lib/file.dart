import 'package:flutter/material.dart';
import 'package:tesssss/covid.dart';
import 'package:tesssss/cell.dart';
import 'package:tesssss/torch.dart';
import 'package:tesssss/vico.dart';

class Smell extends StatefulWidget {
  const Smell({Key? key}) : super(key: key);

  @override
  State<Smell> createState() => _SmellState();
}

class _SmellState extends State<Smell> {
  int big = 0 ;
  final eyes=[
    Bow(),
   Cov(),

  ];
  void ears(mowth)
  {
    setState(() {
      big = mowth ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: eyes[big],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),

          ],
          currentIndex: big,
          onTap: ears,
        ),

    );
  }
}
