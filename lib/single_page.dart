import 'package:flutter/material.dart';
import 'package:my_aplikasi/theme.dart';
// import 'package:my_aplikasi/theme.dart';
// import 'package:my_aplikasi/home.dart';
// import 'package:my_aplikasi/lesson.dart';
// import 'package:my_aplikasi/akun.dart';

class SinglePage extends StatelessWidget {
  final String judul;
  SinglePage(this.judul);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/vide.png'),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: lightBlueColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      judul,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: whiteColor,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "      Kalau tidak kenal maka tidak sayang. Semua hal dimulai dari perkenalan, termasuk saat kita baru mulai mempelajari suatu bahasa. Maka itu, sangatlah penting untuk menguasai cara memperkenalkan diri dalam bahasa yang sedang kamu pelajari.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "      Dengan belajar cara memperkenalkan diri, kamu bisa melatih bahasa Inggrismu, berkenalan dengan penutur asli, dan mendapat teman-teman baru. Bayangkan, kalau kamu tidak bisa memperkenalkan diri, bagaimana kamu bisa berbincang dan berinteraksi dengan orang lain?.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Berikut beberapa kosakata dan frasa bahasa Inggris yang bisa kamu gunakan untuk memperkenalkan diri:",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "May I introduce myself? I’m …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Bolehkah saya memperkenalkan diri saya? Saya adalah ..",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Let me introduce myself. I’m …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Izinkan saya memperkenalkan diri …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "I’d like to introduce myself. I’m …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Saya ingin memperkenalkan diri. Saya …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hi/Hello, I’m …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Hai/Halo, Saya …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nice/Pleasure to meet you. I’m …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Senang bertemu denganmu. Saya …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My (full) name is …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Nama (lengkap) saya adalah …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "You can call me …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Kamu bisa panggil saya …",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "What’s your name?",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Siapa namamu?",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Where are you from?",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Dari mana kamu berasal?",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Frasa-frasa di atas bisa kamu gunakan untuk memperkenalkan diri, memperkenalkan orang lain, dan menyapa orang yang baru kamu kenal.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
