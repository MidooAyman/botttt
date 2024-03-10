// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ضيف الرحمن اهلاً وسهلاً بك في  شركة الحملة الراقية',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'ونتمنى منكم اتباع التعليمات الصادرة من إدارة الحملة',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'حج مبرور وسعي مشكور',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                ':: معلومات هامة ::',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'حجاج باقة (٢) مدينة جده (المسجله في الحجز في موقع وزارة الحج)',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'نقطة التجمع: بقاعة (مون لايت للاحتفالات) بمدينة جده في اليوم السابع من ذي الحجة الساعة ١٢ ليلاً',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'موقع القاعة: https://goo.gl/maps/Vvz14NE7a3BuEwCz6',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                ':::: ملحوظة ::::',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'يجب حضور الحاج محرما إلى نقط التجمع',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
