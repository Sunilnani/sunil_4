import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                       child: Icon(Icons.location_on_outlined,size: 30,)
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chinthakunta (Z)",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                          Text("- - - - - - - - - - - - - - - - - - - - -",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search the items here',
                          fillColor: Colors.white54,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(color: Colors.black26),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RecentCourse(),
                  SizedBox(height:20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Watch Zomato Originals",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ThirdViewList(),
                  SizedBox(height: 30,),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Cook with the pros",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  FourthViewList()
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag_outlined),
                title: Text('Orders'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.location_history_outlined),
                title: Text('History'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.ondemand_video_sharp),
                title: Text('Videos'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),
      ),
    );
  }
}
class RecentCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            child:Image.asset("img/cook.webp"),
          ),
        Container(
          padding: EdgeInsets.only(top:110,left: 20),
          child: Row(
            children: [
              Text("Max Safety Measures",style: TextStyle(color: Colors.indigo,fontSize: 25,fontWeight: FontWeight.w400),),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Watch Now"),
              ),
            ]

          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(top:150,left:20,right: 25),
          child: Text("8 safety measures that we are taking for safe food delivery",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.w400),),
        ),
      ],

    );
  }
}
class ThirdViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return ThirdViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class ThirdViewCard extends StatelessWidget {
  ThirdViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
        child: Container(
          height: 350,
          width: 140,
          child: Padding(
            padding: EdgeInsets.only(left:8),
            child: Image.asset(course.illustration,fit: BoxFit.cover,height: 220,),
          ),
        ),
    );



  }
}
class FourthViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return ThirdViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class FourthViewCard extends StatelessWidget {
  FourthViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Container(
        height: 300,
        width: 120,
        child: Padding(
          padding: EdgeInsets.only(left:8),
          child: Image.asset(course.illustration,fit: BoxFit.cover,height: 220,),
        ),
      ),
    );



  }
}







