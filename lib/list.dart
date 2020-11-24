import 'package:flutter/cupertino.dart';

class Course{
  Course({
    this.coursetitle,
    this.background,
    this.illustration,
    this.text,
    this.time,
    this.logo,
  });
  String coursetitle;
  LinearGradient background;
  String illustration;
  String text;
  String time;
  String logo;
}
var recentCourses = [
  Course(
      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/food.jfif',


  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: "img/food.jfif",


  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/food.jfif',


  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/food.jfif',


  ),
];
// explore couses
