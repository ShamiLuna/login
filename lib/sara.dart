
import 'package:flutter/material.dart';


class Daa extends StatefulWidget {
  const Daa({Key? key}) : super(key: key);

  @override
  State<Daa> createState() => _DaaState();
}

class _DaaState extends State<Daa> {

  final ctrll = TextEditingController();
  String num1="", num2="";
  bool press = false;
  String Selopt = "";



  @override
  Widget build(BuildContext context) {

   return Scaffold(

        body: Column(
          children: [
            TextFormField(controller: ctrll,),
            GestureDetector(
              onTap: ()
              {
                if(press)
                  {
                    num2 += "1";
                    ctrll.text = num2;
                  }
                else
                  {
                    num1 += "1";
                    ctrll.text = num1;
                  }
              },
              child: Container(
                  height: 95,
                  width:  95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: orangeC,
                  ),
                  child: Center(child: Text("1",style: TextStyle(fontSize: 50),))),
            ),
            GestureDetector(
              onTap: ()
              {
                if(press)
                {
                  num2 += "2";
                  ctrll.text = num2;
                }
                else
                {
                  num1 += "2";
                  ctrll.text = num1;
                }
              },
              child: Container(
                  height: 95,
                  width:  95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: orangeC,
                  ),
                  child: Center(child: Text("2",style: TextStyle(fontSize: 50),))),
            ),
            GestureDetector(
              onTap: ()
              {
                ctrll.text= "+";
                Selopt ="+";
                press = true;
              },
              child: Container(
                  height: 95,
                  width:  95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: orangeC,
                  ),
                  child: Center(child: Text("+",style: TextStyle(fontSize: 50),))),
            ),
            GestureDetector(
              onTap: ()
              {
                if(Selopt == "+")
                  {
                    int a = int.parse(num1);
                    int b = int.parse(num2);

                    int res = a + b ;

                    ctrll.text = res.toString();

                  }
              },
              child: Container(
                  height: 95,
                  width:  95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: orangeC,
                  ),
                  child: Center(child: Text("=",style: TextStyle(fontSize: 50),))),
            ),

          ],
        )

    );
  }
}

//
//
// class Helloo extends StatefulWidget {
//   const Helloo({Key? key}) : super(key: key);
//
//   @override
//   State<Helloo> createState() => _HellooState();
// }
//
// class _HellooState extends State<Helloo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//
// ///gridview builder
//           Container(
//             height: 300,
//             child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                     maxCrossAxisExtent: 200,
//                     childAspectRatio: 3 / 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10),
//                 itemCount: 4,
//                 itemBuilder: (BuildContext ctx, index) {
//                   return Container(
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(15)),
//                     child: Text("hi"),
//                   );
//                 }),
//           ),
//
// ///Listview builder
//           Container(
//             height: 200,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index)
//               {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(height: 80,width: 80,color: Colors.cyanAccent,),
//                 );
//               },
//
//
//
//             ),
//           ),
//
// ///slider
//           CarouselSlider.builder(
//             options: CarouselOptions(
//               height: 200,
//               aspectRatio: 16/9,
//               viewportFraction: 0.8,
//               initialPage: 0,
//               enableInfiniteScroll: true,
//               reverse: false,
//               autoPlay: true,
//               autoPlayInterval: Duration(seconds: 3),
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enlargeCenterPage: true,
//               enlargeFactor: 0.3,
//              // onPageChanged: callbackFunction,
//               scrollDirection: Axis.horizontal,
//             ),
//             itemCount: 15,
//             itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
//             {
//             return  Container(
//               height: 100,
//                 width: 300,
//                 color: Colors.cyanAccent,
//                 child: Text(itemIndex.toString()),
//               );
//             }
//           ),
//
//
//         ],
//       ),
//     );
//   }
// }
// class Model
// {
//   String? image;
//   String? text;
//
//   Model(this.image,this.text);
// }
//
// List sil = modelData.map((e) => Model(e["image"],e["text"])).toList();
//
// var modelData = [
// {"image":"assets/abc.jpg","text":"hi"},
// {"image":"assets/efg.jpg","text":"hi2"},
// {"image":"assets/hij.jpg","text":"hi3"},
//   {"image":"assets/download.jpg","text":"hi4"},
//   {"image":"assets/lll.jpg","text":"hi5"},
//   {"image":"assets/sha.png","text":"hi6"}
//
//
//
// ];
//
// class vivo
// {
//   String? image;
//   String? text;
//
//   vivo(this.image,this.text);
// }
//
// List ism = modelOta.map((e) => vivo(e["image"],e["text"])).toList();
//
// var modelOta = [
// {"image":"assets/abc.jpg","text":"27 % deals of day"},
// {"image":"assets/efg.jpg","text":"10 % deals of day"},
// {"image":"assets/hij.jpg","text":"26 % deals of day"},
// {"image":"assets/download.jpg","text":"16 % deals of day"},
// ];
// import 'package:flutter/material.dart';
// import 'package:tesssss/drop.dart';
// class Cums extends StatelessWidget {
//
//
//   List<String> posts = [
//     "assets/abc.jpg",
//     "assets/download.jpg",
//     "assets/efg.jpg",
//     "assets/hij.jpg",
//     "assets/lll.jpg",
//     "assets/abc.jpg",
//     "assets/download.jpg",
//     "assets/efg.jpg",
//     "assets/hij.jpg",
//     "assets/abc.jpg",
//     "assets/download.jpg",
//     "assets/efg.jpg",
//     "assets/hij.jpg",
//     "assets/lll.jpg",
//     "assets/abc.jpg",
//     "assets/download.jpg",
//     "assets/efg.jpg",
//     "assets/hij.jpg",
//     "assets/abc.jpg",
//     "assets/download.jpg",
//     "assets/efg.jpg",
//     "assets/hij.jpg",
//
//
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 3,
//         child: NestedScrollView(
//           physics: ScrollPhysics(),
//           headerSliverBuilder: (context, innerBoxIsScolled) {
//             return [
//               SliverAppBar(
//                 backgroundColor: Colors.white,
//                 collapsedHeight: 320,
//                 expandedHeight: 320,
//                 flexibleSpace: Bums(),
//               ),
//               SliverPersistentHeader(
//                 delegate: MyD(
//                     TabBar(
//                     tabs: [
//                       Tab(icon: Icon(Icons.grid_on)),
//                       Tab(icon: Icon(Icons.movie_outlined)),
//                       Tab(icon: Icon(Icons.perm_identity)),
//
//                     ],
//                       indicatorColor: Colors.blue,
//                       unselectedLabelColor: Colors.grey,
//                       labelColor: Colors.black,
//                     ),
//                 ),
//
//                 floating: true,pinned: true,)
//             ];
//           },
//           body: TabBarView
//             (
//               children: [1,2,3].map((e) =>
//               GridView.count(
//                 physics: BouncingScrollPhysics(),
//                 crossAxisCount: 3,
//                 shrinkWrap: true,
//                 mainAxisSpacing: 2.0,
//                 crossAxisSpacing: 2.0,
//                 children: posts.map((e) =>
//                 Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(image: AssetImage(e),fit: BoxFit.fill,
//                     )
//                   ),
//                 )
//                 ).toList(),
//               )
//               ).toList()),
//         ),
//       ),
//     );
//   }
// }
//
// class MyD extends SliverPersistentHeaderDelegate{
//   MyD(this.tabBar);
//   final TabBar tabBar;
//
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//
//     return Container(
//       color: Colors.white,
//       child: tabBar,
//     );
//   }
//
//   @override
//
//   double get maxExtent => tabBar.preferredSize.height;
//
//   @override
//
//   double get minExtent => tabBar.preferredSize.height;
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//
//     return false;
//   }
//
// }