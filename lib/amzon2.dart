import 'package:amazon/firstfile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'model.dart';
class tree extends StatelessWidget{
  const tree ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => top()));
          },
          child: Container(
            child: Icon(Icons.arrow_back_sharp,color: Colors.black,size: 30,),
            ),
        ),
        title: Container(
          height: 40,
          width: 260,
          decoration: BoxDecoration(
            color: Colors.white,
             border: Border.all(),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            style: TextStyle(),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_sharp,size: 30,color: Colors.black87,),
              hintText: 'Search Amazon.in',
                hintStyle: TextStyle(fontSize: 20,color: Colors.black45),
                suffixIcon: Icon(Icons.camera_outlined,color: Colors.black45,size: 30,)
            ),
          ),
        ),
        actions: [
          Icon(Icons.mic_none_outlined,size: 35,color: Colors.black87,),
        ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 600,
                      aspectRatio: 16/9,
                      viewportFraction: 1.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 20,
                     // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: lis.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          height: 400,
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                              image: AssetImage(lis[itemIndex].image),
                                  fit: BoxFit.fill
                            ),
                          ),

                        ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Icon(Icons.favorite_border_rounded,size: 30,)),
                  ),
                    Positioned(
                      top: 20,
                      right: 10,

                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(Icons.share_outlined,size: 30,)),
                    ),
                 Positioned(
                   left: 10,
                     bottom: 540,
                     child:
                     Container(
                        height: 50,
                             width: 50,
                             decoration: BoxDecoration(
                               color: Colors.red,
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(50),
                             ),
                             child: Center(child: Text("14% off",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                           ),
                 ),


                  ]
                  ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Brand: Samsung",style: TextStyle(fontSize: 20,color: Colors.blue),),
                     // SizedBox(width: 80),
                      Row(
                        children: [
                          Text("3.7",style: TextStyle(color: Colors.black,fontSize: 15),),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 3.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          // SizedBox(width: 10),
                          Text("694",style: TextStyle(color: Colors.cyan,fontSize: 17),),
                        ],
                      )
                    ],
                  ),
                    Text("Samsung Galaxy M14 5G(ICY Silver,^GB,128GB Storage)",style: TextStyle(fontSize: 20,color: Colors.black),),
            Text("Colour: Icy Silver",style: TextStyle(fontSize: 20,color: Colors.black),),
            Text("Size: 6GB + 128GB",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("-29%",style: TextStyle(fontSize: 50,color: Colors.red),),
                    Icon(Icons.currency_rupee,size: 20,),
                      Text("11,999",style: TextStyle(fontSize: 50,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("M.R.P.:",style: TextStyle(fontSize: 20),),
                      Text("^16,999",style: TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough),)

                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/pmp.jpg"),
                      ),
                    ),
                  ),
                 RichText(
                   text: TextSpan(
                     text: '\u{20B9} ',
                     style: TextStyle(fontSize: 20,color: Colors.black),
                     children: const <TextSpan>[
                       TextSpan(text: 'EMI from', style: TextStyle(fontWeight: FontWeight.bold)),
                       TextSpan(text: ' \u{20b9}573.'),
                       TextSpan(text: 'No Cost EMI available.',),
                       TextSpan(text: 'EMI options',style: TextStyle(color: Colors.blue),),
                       TextSpan(text: "Sign up for Amazon Pay UPI",style: TextStyle(fontSize: 20,color: Colors.green)),
                     ],
                   ),
                 ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                   text:
                   TextSpan(
                     text: 'Total: \u{20b9}11,999',
                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                   children: const <TextSpan>[
                     TextSpan(text: '\nFREE delivery',style: TextStyle(color: Colors.cyan)),
                     TextSpan(text: "Tomorrow 8 AM - 12 PM.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                     TextSpan(text: "\nOrder within",style: TextStyle(color: Colors.black,fontSize: 20)),
                     TextSpan(text: "13 hrs 27 mins.",style: TextStyle(color: Colors.green,fontSize: 20)),
                     TextSpan(text: "Details",style: TextStyle(color: Colors.blue,fontSize: 20)),
                   ],
                   ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,size: 20,color: Colors.black87,),
                    Expanded(child: Text("Deliver to Pawan - New Delhi 110084",style: TextStyle(fontSize: 20,color: Colors.cyan),)),
                  ],
                ),
                SizedBox(height: 30),
                Text("In Stocks",style: TextStyle(color: Colors.green,fontSize: 20),),
               SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.black),)),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 20,color: Colors.black),)),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.lock,color: Colors.black87,size: 20,),
                    Text("Secure Transaction",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ],
                ),
                RichText(
                    text:
                    TextSpan(text: 'Sold by',style: TextStyle(color: Colors.black,fontSize: 20),
                    children: const <TextSpan>[
                     TextSpan(text: 'Appario Retail Private Ltd',style: TextStyle(color: Colors.blue,fontSize: 20),),
                    ],
                    ),
                ),
                Row(
                  children: [
                    Icon(Icons.square_outlined,size: 30),
                    SizedBox(width: 10),
                    Expanded(child: Text("Send as agift. Include custom message",style: TextStyle(fontSize: 20,color: Colors.black),))
                  ],
                ),
                Text("Add to Wish List",style: TextStyle(color: Colors.blue,fontSize: 20),)
              ],
            ),
          ]
         ),
      ),
    );
  }
}


