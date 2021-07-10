import 'package:flutter/material.dart';
import 'package:my_aplikasi/theme.dart';
import 'package:my_aplikasi/template.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "user";
  String password = "user";
  String alert = "isikan user dengan 'user' dan password dengan 'user'";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userInput = new TextEditingController();
  TextEditingController passInput = new TextEditingController();
  void loginAction() {
    if (_formKey.currentState.validate()) {
      if (userInput.text == username && passInput.text == password) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TestingPage();
        }));
      } else {
        setState(() {
          alert = "username atau Password salah";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: new EdgeInsets.symmetric(horizontal: 61.0),
              width: 336,
              height: 220,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "login",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                  Text(
                    "welcome",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                alert,
                style: TextStyle(color: blueColor),
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: userInput,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "username belum di isi";
                          } else {
                            return null;
                          }
                        },
                        style: TextStyle(
                          color: lightBlueColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightBlueColor),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: blueColor,
                            size: 40,
                          ),
                          hintText: "username",
                          hintStyle: TextStyle(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: passInput,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "password belum di isi";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        style: TextStyle(
                          color: lightBlueColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightBlueColor),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: blueColor,
                            size: 40,
                          ),
                          hintText: "password",
                          hintStyle: TextStyle(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.5,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 40,
                child: FlatButton(
                  onPressed: () {
                    loginAction();
                  },
                  color: Color(0xff8A2BE2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "doesn’t have an acount yet ?",
                ),
                FlatButton(
                  onPressed: () {
                    /*...*/
                  },
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
