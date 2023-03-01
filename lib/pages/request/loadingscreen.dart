import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthcar/pages/request/helperdetailspage.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HelperDetailsPage(
                  name: 'Suman Sahoo',
                  phoneNumber: '8144498292',
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loading')),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
