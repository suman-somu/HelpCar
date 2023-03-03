import 'package:flutter/material.dart';
import 'package:healthcar/loadingScreen1.dart';

class InputLocationPage extends StatefulWidget {
  const InputLocationPage({Key? key}) : super(key: key);

  @override
  _InputLocationPageState createState() => _InputLocationPageState();
}

class _InputLocationPageState extends State<InputLocationPage> {
  final TextEditingController _locationController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

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
