// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('برنامج الحج'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/ph.jpeg',
          width: 300, // Set the width as needed
          height: 700, // Set the height as needed
        ),
      ),
    );
  }
}
