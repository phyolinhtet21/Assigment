import 'package:assigment/pages/attendance.dart';
import 'package:assigment/pages/course.dart';
import 'package:assigment/pages/home.dart';
import 'package:assigment/pages/profile.dart';
import 'package:assigment/pages/result.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(application());
  }

class application extends StatefulWidget {
  const application({super.key});

  @override
  State<application> createState() => _applicationState();
}

class _applicationState extends State<application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=> home(),
        "/course" : (context) => course(),
        "/profile": (context)=>profile(),
        "/result" : (context)=>result(),
        "/attendance" : (context)=>attendance(),
      },
    );
  }
}
