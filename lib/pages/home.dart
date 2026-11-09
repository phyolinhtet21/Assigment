import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  static const button_color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Dashboard",
          style: TextStyle(fontFamily: "EnglishTitle",color: Colors.white),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(200, 20, 200, 20),
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.grey,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _get_logo(),
                SizedBox(width: 30),
                Column(
                  children: [
                    Row(
                      children: [_getText("Name :"), _getText("Phyo Lin Htet")],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        _getText("Major :"),
                        _getText("Computer Science"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(children: [_getText("Year :"), _getText("Final Year")]),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 300,
            margin: EdgeInsets.fromLTRB(200, 20, 200, 20),
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button_color,
                        fixedSize: Size(150, 50),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/course");
                      },
                      child: Text(
                        "Course",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "English",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button_color,
                        fixedSize: Size(150, 50),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/profile");
                      },
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "English",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button_color,
                        fixedSize: Size(150, 50),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/result");
                      },
                      child: Text(
                        "Result",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "English",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button_color,
                        fixedSize: Size(150, 50),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/attendance");
                      },
                      child: Text(
                        "Attendance",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "English",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _get_logo() {
    return SizedBox(
      child: Image(
        image: AssetImage("assets/images/human.jpg"),
        width: 100,
        height: 100,
      ),
    );
  }

  _getText(String text) {
    return Text(
      "$text",
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: "English",
      ),
    );
  }

  _getButton() {
    ElevatedButton(onPressed: () {}, child: Text("Subject"));
  }
}
