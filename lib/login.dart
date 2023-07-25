import 'package:flutter/material.dart';
import 'package:amazon/firstfile.dart';

class Node extends StatelessWidget{
  const Node ({Key? key}) : super(key: key);
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: const Text("Amazon Services",
        style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
       leading: const Icon(Icons.menu,color: Colors.white,size: 40,),
        actions: [
         Icon(Icons.search),
          Padding(
          padding: const EdgeInsets.all(9.0),
           child: Icon(Icons.camera)
          )
         ],
        ),

    body: SingleChildScrollView(
      child: Column(
      children: [
        SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              hintText: 'Enter name'
            ),
          ),
        ),
        SizedBox(height: 30),
       Container(
           height: 60,
           width: 380,
         child: TextFormField(
           decoration: InputDecoration(
               border: OutlineInputBorder(),
               icon: Icon(Icons.password_sharp),
               hintText: 'Enter password'
           ),
         ),
       ),
       SizedBox(height: 20),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
            height: 350,
            width: 300,
           //color: Colors.cyan,
           decoration: BoxDecoration(
               color: Colors.cyan,
             border: Border.all(),
             borderRadius: BorderRadius.circular(10),
           ),

            child: Center
              (child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/am.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
            ),
            ),
            ),
       ),
        SizedBox(height: 25),
          GestureDetector(
            onTap: () {
            Navigator.push(context, MaterialPageRoute ( builder: (context) =>  top()),
            );//push
            },//onTap
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(),
                borderRadius: BorderRadius.circular(110),
              ),
              child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic,color: Colors.white),)),
            ),
          ),
         ],
         ),
    ),
      );
    }
   }