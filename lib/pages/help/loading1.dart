import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthcar/pages/help/RideDetails.dart';
import 'package:healthcar/pages/request/helperdetailspage.dart';

class LoadingScreen1 extends StatefulWidget {
  @override
  _LoadingScreen1State createState() => _LoadingScreen1State();
}

class _LoadingScreen1State extends State<LoadingScreen1> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => RideDetails(
                  name: 'Suman Sahoo',
                  phone: '8144498292',
                  dropLocation: 'Puri',
                  pickupLocation: 'Rourkela',
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
