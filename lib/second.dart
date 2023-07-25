import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class def extends StatelessWidget{
  const def ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: RichText(
          text: TextSpan(
              text: "amazon",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black),
        children: const<TextSpan>[
          TextSpan(text: ".in",style: TextStyle(fontSize:20,fontStyle: FontStyle.normal),),
        ],
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications_none_outlined,size: 30,color: Colors.black),
          ),
          Icon(Icons.search,size: 30,color: Colors.black),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(Icons.person,color: Colors.white,size: 35,),
              ),
              Text("  Hello,",style: TextStyle(fontSize: 20),),
              Text("  Laxmi",style: TextStyle(fontSize: 20),),
              SizedBox(width: 150),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/jan.png"),
                  ),
                ),
              ),
              Text(" EN",style: TextStyle(color: Colors.black,fontSize: 20),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Your Orders",style: TextStyle(fontSize: 20),),),
              ),
              SizedBox(width: 30),
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Buy Again",style: TextStyle(fontSize: 20),),),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Your Account",style: TextStyle(fontSize: 20),),),
              ),
              SizedBox(width: 30),
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Your Wish List",style: TextStyle(fontSize: 20),),),
              ),
            ],
          ),
          SizedBox(height: 20),
          RichText(text: TextSpan(text: "Your Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            children: const<TextSpan>[
              TextSpan(text: "                                See all",style: TextStyle(color: Colors.blue,fontSize: 20),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}