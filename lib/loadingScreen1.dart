import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthcar/homePage.dart';
import 'package:healthcar/rideDetailsRequester.dart';

class LoadingScreen1 extends StatefulWidget {
  final String location;

  LoadingScreen1({required this.location});

  @override
  _LoadingScreen1State createState() => _LoadingScreen1State();
}

class _LoadingScreen1State extends State<LoadingScreen1> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  final user = FirebaseAuth.instance.currentUser;
  var userData;

  Future<void> updateUser(String location) async {
    final QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: user?.email!)
        .get();

    if (snapshot.docs.isNotEmpty) {
      userData = snapshot.docs;
      print(userData.toString());
      // Do something with the document here
    }

    return users
        .doc(userData)
        .update({'location': location})
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  bool _isLoading = true;

  void _navigateToRideDetailsPage(String name, String phone) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => RideDetailsRequesterPage(
          name: name,
          phone: phone,
        ),
      ),
    );
  }

  Future<int> waitMethod() async {
    await updateUser(widget.location);
    return 1;
  }

  @override
  void initState() {
    super.initState();
    waitMethod();

    Timer(Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
      _navigateToRideDetailsPage("Sharukh Shah", "9864386547");
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 30),
              Text(
                "Don't press back button ${userData}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD76B73),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
