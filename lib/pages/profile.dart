import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontFamily: "EnglishTitle"),
        ),
      ),
      body: Center(
        child: Text(
          "This Is Profile Page",
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
