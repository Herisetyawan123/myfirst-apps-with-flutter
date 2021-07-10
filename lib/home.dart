import 'package:flutter/material.dart';

import 'package:my_aplikasi/theme.dart';

/// This is the stateful widget that the main application instantiates.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// This is the private State class that goes with MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: lightBlueColor,
      body: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/atas.png'),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "English",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.repeat,
                        color: whiteColor,
                        size: 20.0,
                      ),
                      Text(
                        "Indonesia",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  width: size.width - 40,
                  height: 163,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: lightBlueColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      height: 1.0,
                    ),
                    decoration: InputDecoration(
                      fillColor: whiteColor,
                      filled: true,
                      border: InputBorder.none,
                      hintText: "masukan kata atau  kalimat...",
                      hintStyle: TextStyle(
                        color: Color(0xffC5C5C5),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 40,
                    child: FlatButton(
                      onPressed: () {},
                      color: Color(0xff8A2BE2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Text(
                        "Translate",
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
