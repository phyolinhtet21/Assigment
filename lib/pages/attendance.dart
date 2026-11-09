import 'package:flutter/material.dart';

class attendance extends StatefulWidget {
  const attendance({super.key});

  @override
  State<attendance> createState() => _attendanceState();
}

class _attendanceState extends State<attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Attendance",
          style: TextStyle(color: Colors.white, fontFamily: "EnglishTitle"),
        ),
      ),
      body: Center(
        child: Text(
          "This Is Attendance Page",
          style: TextStyle(
            color: Colors.blue,
            fontFamily: "EnglishTitle",
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
