import 'package:flutter/material.dart';

class HelperDetailsPage extends StatelessWidget {
  final String name;
  final String phoneNumber;

  const HelperDetailsPage({
    Key? key,
    required this.name,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Helper Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Helper Name:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              phoneNumber,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
