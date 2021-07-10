import 'package:flutter/material.dart';

import 'package:my_aplikasi/theme.dart';

/// This is the stateful widget that the main application instantiates.
class AkunPage extends StatefulWidget {
  AkunPage({Key key}) : super(key: key);

  @override
  _AkunPageState createState() => _AkunPageState();
}

/// This is the private State class that goes with AkunPage.
class _AkunPageState extends State<AkunPage> {
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
                image: AssetImage('assets/atas-akun.png'),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 155,
                    height: 155,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Heri Setyawan",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "herisetyawan233@gmail.com",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: size.width - 40,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "user :",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "user",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Password :",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "user",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Alamat :",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "jl. gatot kaca, Kec Bahagia",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
