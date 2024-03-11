// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('موقع مني'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // يمكنك إضافة الإجراء الذي ترغب في تنفيذه عند النقر على الرابط هنا
                // مثال: يمكنك فتح الرابط في متصفح الويب
              },
              child: Text(
                'https://goo.gl/maps/EFTzRodLW8XJD6Hj6',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue, // يمكنك تغيير لون الرابط حسب الرغبة
                  decoration: TextDecoration.underline, // إضافة تحت خط للرابط
                ),
              ),
            ),
            // يمكنك إضافة المزيد من العناصر هنا حسب الحاجة
          ],
        ),
      ),
    );
  }
}
