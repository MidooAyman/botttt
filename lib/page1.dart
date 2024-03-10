// fourth_page.dart
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  TextEditingController nationalIdController = TextEditingController();
  String? clientId;

  void _sendNationalId() {
    // Implement the logic to send the national ID to the server or perform the appropriate action.
    // In this example, we'll skip the actual sending step and set a simple client ID.
    setState(() {
      clientId =
          '789012'; // Replace with the server response if you are making an API call.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التأكد من الحجز'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nationalIdController,
              decoration: InputDecoration(
                labelText: 'الرقم القومي',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _sendNationalId();
              },
              child: Text('ارسال'),
            ),
            SizedBox(height: 16),
            if (clientId != null)
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ID رقم :'),
                    Row(
                      children: [
                        Text(clientId!),
                        SizedBox(width: 8),
                        IconButton(
                          icon: Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: clientId!));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('تم النسخ')),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
