import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'color.dart';

class Gogi extends StatefulWidget {
  const Gogi({Key? key}) : super(key: key);
  static const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  State<Gogi> createState() => _GogiState();
}

class _GogiState extends State<Gogi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cyn,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
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
           Stack(
             children: [
               CarouselSlider.builder(
                 options: CarouselOptions(
                   height: 590,
                   aspectRatio: 16/4,
                   viewportFraction: 1.1,
                   initialPage: 0,
                   enableInfiniteScroll: true,
                   reverse: false,
                   autoPlay: false,
                   autoPlayInterval: Duration(seconds: 3),
                   autoPlayAnimationDuration: Duration(milliseconds: 800),
                   autoPlayCurve: Curves.fastOutSlowIn,
                   enlargeCenterPage: true,
                   enlargeFactor: 0.1,
                   // onPageChanged: callbackFunction,
                   scrollDirection: Axis.horizontal,
                 ),
                 itemCount: sil.length, itemBuilder: (BuildContext context, int index, int realIndex){

                 return Container(
                   height: 500,
                   width: 400,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(
                         sil[index].image
                       ),fit: BoxFit.fill,
                     ),
                     //borderRadius: BorderRadius.circular(30),
                   ),


                   // child: Stack(
                   //   children: [
                   //     ListTile(
                   //       leading: Container(
                   //           height: 40,
                   //           width: 40,
                   //           decoration: BoxDecoration(
                   //             shape: BoxShape.circle,
                   //             border: Border.all(),
                   //             color: pri,
                   //           ),
                   //           child: Center(child: Text("34%,off",style: TextStyle(color: Colors.white,fontSize: 10),))),
                   //       trailing: Container(
                   //           height: 40,
                   //           width: 40,
                   //           decoration: BoxDecoration(
                   //             border: Border.all(),
                   //             shape: BoxShape.circle,
                   //           ),
                   //           child: Icon(Icons.share_outlined)),
                   //
                   //     ),
                   //     Positioned(
                   //       bottom: 10,
                   //       left: 7,
                   //       child: Container(
                   //         clipBehavior: Clip.none,
                   //         height: 40,
                   //         width: 40,
                   //         decoration: BoxDecoration(
                   //           border: Border.all(),
                   //           shape: BoxShape.circle,
                   //         ),
                   //         child: Icon(Icons.favorite_border_outlined),
                   //       ),
                   //     ),
                   //   ]
                   // ),

                 );
               },

               ),
               Positioned(
                 left: 7,
                 child: Container(
                     height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                        color: pri,
                       shape: BoxShape.circle,
                     ),
                     child: Center(child: Text("34%,off",style: TextStyle(color: Colors.white,fontSize: 10),))),),
               Positioned(
                 top: 2,
                 right: 7,
                   child: Container(
                               height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                 border: Border.all(),
                                 shape: BoxShape.circle,
                               ),
                       child: Icon(Icons.share_outlined))),
      Positioned(
              bottom: 10,
              left: 7,
              child: Container(
                clipBehavior: Clip.none,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.favorite_border_outlined),
              ),
      ),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Visit the Xiaomi Store",style: TextStyle(color: cyn,fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("5.0",style: TextStyle(fontSize: 19,color: Colors.black54),),

              Row(

                children: [RatingBar.builder(
    initialRating: 4,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
    itemBuilder: (context, _) => Icon(
    Icons.star,
    color: Colors.amber,
    ),
    itemSize: 19,
    onRatingUpdate: (rating) {
    print(rating);
    },
    ),
                  Text("6",style: TextStyle(color: cyn,fontSize: 19),)
                ],
              ),
                ],
              ),
              ],
            ),
            Text("Redmi 10 Power(Power Black,Black,8GB Ram,128GB Storages)",style: TextStyle(fontSize: 16),),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                    color: Colors.black54,
                  ),
                  child: Row(
                    children: [
                      Text("Amazon's ",style: TextStyle(color: Colors.white,fontSize: 20),),
                          Text("Choice",style: TextStyle(color:Colors.deepOrange,fontSize: 20  ),),
                    ],
                  ),
                ),
                Text('  for "10power"',style: TextStyle(fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("-34%",style: TextStyle(fontSize: 40,color: red),),
                Text("   \u{20B9}",textAlign: TextAlign.start,),
                    Text("12499",style: TextStyle(fontSize: 40),),
              ],
            ),
            Row(
              children: [
                Text("M.R.P.:",style: TextStyle(fontSize: 20),),
                Text("\u{20B9}",textAlign: TextAlign.start,style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20),),
                Text("18999",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20),),

              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Icon(Icons.lock),Text("Total: \u{20B9}12499",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                child: RichText(text: TextSpan(
                    text: "FREE",
                    style: TextStyle(
                        fontSize: 15,color: Colors.blueAccent),
                    children: <TextSpan>
                    [
                      TextSpan(text: " delivery",style: TextStyle(fontSize: 19,color: Colors.blueAccent),),
                      TextSpan(text: " Saturday, 3 June.",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
                      TextSpan(text: " Order within",style: TextStyle(fontSize: 19,color: Colors.black87),),
                      TextSpan(text: " 6 hrs 7 mins.",style: TextStyle(fontSize: 19,color: Colors.green),),
                      TextSpan(text: " Details",style: TextStyle(fontSize: 19,color: Colors.blueAccent),),

                    ]

                )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.place_outlined),
                  Text("Delivery to conoor rabi-643002",style: TextStyle(fontSize: 18,color: Colors.blueAccent),),


                ],
              ),
            ),

            Row(
              children: [
            Text(" In stock",style: TextStyle(color: Colors.green,fontSize: 30),),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text( "Qty: 1"),
                        ],
                      ),
                    ),

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.yellow,
                ),
                child: Center(child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.deepOrange,
                ),
                child: Center(child: Text("Buy Now",style: TextStyle(fontWeight: FontWeight.bold),),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Secure transition"),
            ),
            Row(
      children: [
        Container(
        width: 300,
        child: RichText(text: TextSpan(
        style: TextStyle(
        fontSize: 15,color: Colors.blueAccent),
        children: <TextSpan>
        [
        TextSpan(text: "Sold by",style: TextStyle(fontSize: 18,color: Colors.black),),
        TextSpan(text: " Darshita Etel",style: TextStyle(fontSize: 18,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
        TextSpan(text: " and",style: TextStyle(fontSize: 18,color: Colors.black),),
        TextSpan(text: " Fulfilled by Amazon",style: TextStyle(fontSize: 18,color: Colors.blueAccent),),
          ]
           ),
           ),),
          ],
        ),
            Row(
              children: [
                Text("Gift-wrap available.",style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Add to Wish List",style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
              ],
            ),

           Divider(
             color: Colors.grey,
             thickness: 2,
           ),
          ],
        ),
      ),
    );
  }
}




class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}

List sil = modelData.map((e) => Model(e["image"],e["text"])).toList();

var modelData = [

  {"image":"assets/abc.jpg"},
  {"image":"assets/efg.jpg"},
  {"image":"assets/hij.jpg"}


];

List<String> posts = [
    "assets/abc.jpg",
    "assets/download.jpg",
    "assets/efg.jpg",
    "assets/hij.jpg",
    "assets/abc.jpg",
    "assets/download.jpg",
    "assets/efg.jpg",
    "assets/hij.jpg",
    "assets/abc.jpg",
    "assets/download.jpg",
    "assets/efg.jpg",
    "assets/hij.jpg",
    "assets/abc.jpg",
];