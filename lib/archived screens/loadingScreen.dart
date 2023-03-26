import 'package:flutter/material.dart';

import 'RideDetailsPage.dart';

class LoadingScreen extends StatefulWidget {
  final String name;
  final String phone;
  final String pickupLocation;

  LoadingScreen({
    required this.name,
    required this.phone,
    required this.pickupLocation,
  });

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RideDetailsPage(
            name: widget.name,
            phone: widget.phone,
            pickupLocation: widget.pickupLocation,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color(0xFFFFA267),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
