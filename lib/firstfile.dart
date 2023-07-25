import 'package:amazon/navi.dart';
import 'package:flutter/material.dart';

class top extends StatelessWidget{
  const top ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title:
        Container(
          height: 40,
          width: 330,
          color: Colors.white,
          child: TextFormField(
            style: TextStyle(fontSize: 25,color: Colors.black45),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search_sharp,size: 30,color: Colors.black,),
              hintText: 'Search Amazon.in',
                hintStyle: TextStyle(fontSize: 20,color: Colors.black45),
              suffixIcon: Icon(Icons.camera_outlined,size: 30,)
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            child: Icon(Icons.keyboard_voice_outlined,size: 35,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => navi()));
              },
              child: Container(
                height: 80,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder:(BuildContext context,index)
                    {
                      return Padding(
                          padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("asset/mob.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      );
                    }
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => navi()),);
              },
              child: Container(
                  height: 300,
                    color: Colors.white,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 5,
                     itemBuilder: (BuildContext context,index){
                       return Padding(
                         padding: const EdgeInsets.all(3.0),
                         child: Container(
                           height: 450,
                           width: 400,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("asset/mel.jpg"),
                             ),
                           ),
                         ),
                       );
                     }
                   ),
                ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => navi()),);
              },
              child: Container(
                height: 200,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,index){
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          elevation: 20,
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("asset/rec.jpg"),
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => navi()),);
              },
              child: Container(
                height: 400,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Container(
                            height: 150,
                           width: 200,
                           alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("asset/iq.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("MI Plus Variant",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      );

                    }
                    ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
              child: Text("New season collection Spring/summer'23",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => navi()),);
              },
              child: Container(
                height: 500,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.2/3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("asset/mel.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text("Top dress & more Vermoda",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    );
                  }

              ),
           ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}