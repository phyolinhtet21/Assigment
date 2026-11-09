import 'package:flutter/material.dart';

class course extends StatefulWidget {
  const course({super.key});

  @override
  State<course> createState() => _courseState();
}

class _courseState extends State<course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "EnglishTitle",
            fontSize: 20,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: SizedBox(
          width: 1000,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Final Year Course",
                style: TextStyle(fontFamily: "English", fontSize: 20),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      _getcontainer("E - 5101"),
                      SizedBox(width: 30),
                      _getcontainer("CS - 5121"),
                      SizedBox(width: 30),
                      _getcontainer("CS - 5112"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _getcontainer("CST - 5123"),
                      SizedBox(width: 30),
                      _getcontainer("CS - 5114"),
                      SizedBox(width: 30),
                      _getcontainer("CS - 5155"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100),
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    fixedSize: Size(200, 50),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You Clicked View Button")),
                    );
                  },
                  icon: Icon(Icons.ads_click, color: Colors.white),
                  label: Text(
                    "View Subject",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getcontainer(String text) {
    return Container(
      width: 150,
      height: 80,
      color: Colors.lightBlue,
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontFamily: "English"),
        ),
      ),
    );
  }
}
