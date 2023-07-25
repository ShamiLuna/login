import 'package:amazon/amzon2.dart';
import 'package:amazon/thirdfile.dart';
import 'package:flutter/material.dart';
import 'package:amazon/firstfile.dart';
import 'package:amazon/second.dart';

class navi extends StatefulWidget{
  const navi ({Key? key}): super(key: key);
  State<navi> createState() => _naviState();
}
 class _naviState extends State<navi>{
  int _index= 0;
  final page = [
    tree(),
    def(),
    fed(),
  ];
  void tap(index){
    setState(()
    {
    _index= index;
    }
    );
  }
 @override
   Widget build(BuildContext context){
    return Scaffold(
      body: page [_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.description,color: Colors.black,size: 30),label: 'Description'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 30),label: 'YOU'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_sharp,color: Colors.black,size: 30),label: 'MENU')
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
 }
