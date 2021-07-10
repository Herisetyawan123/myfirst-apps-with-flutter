import 'package:flutter/material.dart';
import 'package:my_aplikasi/theme.dart';
import 'package:my_aplikasi/home.dart';
import 'package:my_aplikasi/lesson.dart';
import 'package:my_aplikasi/akun.dart';

/// This is the stateful widget that the main application instantiates.
class TestingPage extends StatefulWidget {
  TestingPage({Key key}) : super(key: key);

  @override
  _TestingPageState createState() => _TestingPageState();
}

/// This is the private State class that goes with TestingPage.
class _TestingPageState extends State<TestingPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    PracticePage(),
    AkunPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: blueColor,
        unselectedItemColor: lightBlueText,
        onTap: _onItemTapped,
      ),
    );
  }
}
