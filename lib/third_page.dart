// third_page.dart
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController nationalIdController = TextEditingController();
  String? clientId;

  void _sendNationalId() {
    // يمكنك هنا إرسال الرقم القومي إلى الخادم أو إجراء الإجراء المناسب.
    // في هذا المثال، سنقوم بتجاهل الخطوة الفعلية للإرسال ونقوم بتعيين رقم عميل بسيط.
    setState(() {
      clientId =
          '123456'; // استبدل بالرد الفعل من الخادم إذا كنت تستخدم استدعاء API.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
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
              child: Text('تأكيد الإرسال'),
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
                    Text('رقم العميل:'),
                    Row(
                      children: [
                        Text(clientId!),
                        SizedBox(width: 8),
                        IconButton(
                          icon: Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: clientId!));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('تم نسخ رقم العميل')),
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
