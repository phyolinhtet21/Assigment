import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Result",
          style: TextStyle(color: Colors.white, fontFamily: "EnglishTitle"),
        ),
      ),
      body: Center(
        child: Text(
          "This Is Result Page",
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
