// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الحملة الراقية',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController customerIdController = TextEditingController();

  void _register(BuildContext context) {
    String nationalId = nationalIdController.text;
    String customerId = customerIdController.text;

    print("National ID: $nationalId");
    print("Customer ID: $customerId");

    _navigateToSecondPage();

    // إظهار الإشعار
    final snackBar = SnackBar(
      content: Text('!! vip مرحبا بك عميلنا العزيز بخدمة ال '),
      duration: Duration(seconds: 2), // يمكنك تعديل المدة حسب الحاجة
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _navigateToSecondPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  void _navigateToThirdPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 16), // Adjust the padding as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/1706825385124.jpeg',
                fit: BoxFit.contain,
              ),
              SizedBox(height: 16),
              TextField(
                controller: nationalIdController,
                decoration: InputDecoration(labelText: 'الرقم القومي'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: customerIdController,
                decoration: InputDecoration(labelText: 'id رقم '),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _register(context),
                child: Text('التسجيل'),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: _navigateToThirdPage,
                child: Text(
                  'id لقد نسيت رقم ',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
