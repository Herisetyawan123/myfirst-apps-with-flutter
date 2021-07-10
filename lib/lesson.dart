import 'package:flutter/material.dart';
import 'package:my_aplikasi/theme.dart';
import 'package:my_aplikasi/widget/lesson_tile.dart';

/// This is the stateful widget that the main application instantiates.
class PracticePage extends StatefulWidget {
  PracticePage({Key key}) : super(key: key);

  @override
  _PracticePageState createState() => _PracticePageState();
}

/// This is the private State class that goes with PracticePage.
class _PracticePageState extends State<PracticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "English Class",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Let's enjoy to learn and never give up !!",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
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
            LessonTile(
                'assets/kotak.png', 'Introducing Yourself & Others', 0.2, true),
            SizedBox(
              height: 20,
            ),
            LessonTile('assets/kotak.png', 'Greeting', 0.4, true),
            SizedBox(
              height: 20,
            ),
            LessonTile('assets/kotak.png', 'Talking about Time', 0.9, true),
            SizedBox(
              height: 20,
            ),
            LessonTile('assets/kotak.png', 'How to Ask Questions', 0.7, true),
            SizedBox(
              height: 20,
            ),
            LessonTile('assets/kotak.png', 'Saying good bye', 1, true),
            SizedBox(
              height: 20,
            ),
            LessonTile('assets/kotak.png', 'How to Ask Questions', 0.4, true),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
