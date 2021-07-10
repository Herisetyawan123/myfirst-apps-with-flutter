import 'package:flutter/material.dart';
import 'package:my_aplikasi/theme.dart';
import 'package:my_aplikasi/single_page.dart';

class LessonTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double persen;
  final bool isLocked;

  LessonTile(this.imageUrl, this.title, this.persen, this.isLocked);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        // height: 98,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
            top: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          subtitle: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              minHeight: 6,
              backgroundColor: Color(0xffECEEF5),
              valueColor: AlwaysStoppedAnimation(blueColor),
              value: persen,
            ),
          ),
          trailing: RawMaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SinglePage(title);
              }));
            },
            elevation: 3.0,
            fillColor: Colors.white,
            child: Icon(
              Icons.play_circle_filled,
              size: 40.0,
              color: blueColor,
            ),
            shape: CircleBorder(),
          ),

          // trailing: Container(
          //   width: 32,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         'assets/icon_play.png',
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
