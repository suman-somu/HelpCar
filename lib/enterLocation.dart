// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healthcar/loadingScreen1.dart';

class InputLocationPage extends StatefulWidget {
  const InputLocationPage({Key? key}) : super(key: key);

  @override
  _InputLocationPageState createState() => _InputLocationPageState();
}

class _InputLocationPageState extends State<InputLocationPage> {
  // CollectionReference users = FirebaseFirestore.instance.collection('users');
  final TextEditingController _locationController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  // Future<void> updateUser(String location) {
  //   return users
  //       .doc('appUsers')
  //       .update({'location': location})
  //       .then((value) => print("User Updated"))
  //       .catchError((error) => print("Failed to update user: $error"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input your Location'),
        backgroundColor: const Color(0xFFFFA267),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _locationController,
                decoration: InputDecoration(
                  hintText: 'Enter your location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // await updateUser(_locationController.text);

                // Navigate to the loading screen with the entered location
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoadingScreen1(
                      location: _locationController.text,
                    ),
                  ),
                );
              },
              child: const Text('Continue'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFA267),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
