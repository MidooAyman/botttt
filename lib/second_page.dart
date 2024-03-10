// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:bot/page1.dart' as page1; // Import 'page1.dart' with an alias
import 'package:bot/page2.dart' as page2; // Import 'page2.dart' with an alias
import 'package:bot/page3.dart' as page3;
import 'package:bot/page4.dart' as page4;
import 'package:bot/page5.dart' as page5;
import 'package:bot/page6.dart' as page6;
import 'package:bot/page7.dart' as page7;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isMoonButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // جعل الخلفية شفافة
        elevation: 0, // إزالة الظل
        title: Text(''),
        actions: [
          IconButton(
            icon: isMoonButtonPressed
                ? Icon(Icons.brightness_2)
                : Icon(Icons.brightness_1),
            onPressed: () {
              setState(() {
                isMoonButtonPressed = !isMoonButtonPressed;
              });
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true, // تمديد الجسم خلف AppBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              isMoonButtonPressed
                  ? 'assets/images/bg2.jpeg'
                  : 'assets/images/bg.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          // Wrap the ListView with a SingleChildScrollView
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              // Center the Column vertically
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                buildPageButton('للتأكد من حجزكم الرجاء الضغط على', () {
                  // Navigate to Page 1
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page1.FourthPage()));
                }),
                SizedBox(height: 25),
                buildPageButton('لمعرفة وقت ومكان التجمع اضغط', () {
                  // Navigate to Page 2
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page2.Page2()));
                }),
                SizedBox(height: 25),
                buildPageButton('لمعرفة موقع منى اضغط', () {
                  // Navigate to Page 2
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page3.Page3()));
                }),
                SizedBox(height: 25),
                buildPageButton('لمعرفة موقع عرفة اضغط ', () {
                  // Navigate to Page 2
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page4.Page4()));
                }),
                SizedBox(height: 25),
                buildPageButton('لطباعة تصريح الحج اضغط', () {
                  // Navigate to Page 2
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page5.Page5()));
                }),
                SizedBox(height: 25),
                buildPageButton('لبرنامج الحاج كاملا اضغط ', () {
                  // Navigate to Page 2
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page6.Page6()));
                }),
                SizedBox(height: 25),
                buildPageButton('لرؤية مرفقات المخيم اضغط', () {
                  // Navigate to Page 2
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page7.VideoPlayerPage()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPageButton(String buttonText, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
