import 'package:flutter/material.dart';
import 'package:viewlogin/covid.dart';
import 'package:viewlogin/up.dart';
class Log extends StatelessWidget {
  const Log ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(child: Text("Welcom to amazon login")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Up()),
              );
            }, child: Text("Login"),)
          ],
        ),

      ),
    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),

    ],
    ));
  }
}
