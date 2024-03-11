// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'لطباعة تصريح الحج',
              style: TextStyle(fontSize: 20),
            ),
            // يمكنك إضافة المزيد من العناصر هنا حسب الحاجة
          ],
        ),
      ),
    );
  }
}
