import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:viewlogin/redmi.dart';
import 'package:viewlogin/sara.dart';

import 'color.dart';


class Up extends StatelessWidget {
  const Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cyn ,
        title: Container(
          height: 40,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black),
                hintText: ("Search Amazon.in"),
                suffixIcon: Icon(Icons.qr_code_scanner,color: Colors.black,),
                border: InputBorder.none,

              ),

            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic,color: Colors.black,),
          ),
        ]
      ),
      
      body:
      SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: deli,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.place),
                  ),
                  Text("Delivery to conoor rabi-643002"),
                ],
              ),
            ),
           Container(
             child: GestureDetector(
               onTap: ()
               {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const Gogi()),
                 );
               },
               child: Container(
                 height: 120,
                 decoration: BoxDecoration(
                 ),
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: lis.length,
                     itemBuilder: (BuildContext context,index)
                         {
                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [
                                 Container(
                                   height: 70,
                                   width: 70,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(30),
                                       image: DecorationImage(
                                           image: AssetImage(lis[index].image),fit: BoxFit.fill,
                                       ),
                                   ),
                                 ),
                                 Text(lis[index].text),
                               ],
                             ),
                           );
                         }
                 ),
               ),
             ),
           ),
          Container(
            height: 480,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                green,
              ],
            )

          ),
          child: GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gogi()),
              );
            },
            child: Column(
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 280,
                    aspectRatio: 16/4,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: lis.length, itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: 220,
                    width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(lis[index].image),fit: BoxFit.fill,
                      ),
                    ),
                  );
                },),

                Container(
                  height: 200,

                  child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                      itemCount: lis.length,
                      itemBuilder: (BuildContext context,index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 190,
                            width: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                  image: AssetImage(lis[index].image),fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
            Row(
              children: [
                Text("Deals of today",style: head,),
              ],
            ),

            Card(
              elevation: 9,
              child: GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Gogi()),
                  );
                },
                child: Container(
                  height: 390,

                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 2/2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 1),
                    itemCount: lis.length,
                    itemBuilder: (BuildContext context, int index)

                    {
                    return Column(
                      children: [
                        Container(
                          height: 160,
                          width: 185,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(lis[index].image),fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(lis[index].text),
                          ],
                        )
                      ],
                    );

                  },),
                ),
              ),
            ),
            Card(
              elevation: 2,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
class vivo
{
  String? image;
  String? text;

  vivo(this.image,this.text);
}

List lis = modelOta.map((e) => vivo(e["image"],e["text"])).toList();

var modelOta = [
{"image":"assets/abc.jpg","text":"27 % deals of day"},
{"image":"assets/efg.jpg","text":"10 % deals of day"},
{"image":"assets/hij.jpg","text":"26 % deals of day"},
{"image":"assets/download.jpg","text":"16 % deals of day"},
];