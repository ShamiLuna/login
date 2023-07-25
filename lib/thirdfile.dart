import 'package:flutter/material.dart';
class fed extends StatelessWidget{
  const fed ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Container(
          height: 40,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.search_sharp,color: Colors.black45,size: 30),
              suffixIcon: Icon(Icons.camera_outlined,color: Colors.black45,size:30),
            ),
          ),
        ),
        actions: [
          Icon(Icons.mic_none_outlined,size: 35,color: Colors.black,),
        ],
      ),
      body: Container(
        color: Colors.cyan.shade100,
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("pay",style: TextStyle(fontSize: 30),)),
                          ),
                        ),
                        Text("Amazon Pay",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("miniTV",style: TextStyle(fontSize: 30),)),
                          ),
                        ),
                        Text("Amazon miniTV",style: TextStyle(fontSize: 20),),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}