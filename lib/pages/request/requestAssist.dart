import 'package:flutter/material.dart';
import 'package:healthcar/pages/request/loadingscreen.dart';

class RequestAssistPage extends StatelessWidget {
  const RequestAssistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffD76B73),
        title: Text(
          "Request Assist",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Available Drivers",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292F33),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "10",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292F33),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoadingScreen()),
                  ).then((value) {
                    // This block of code executes after the loading screen is dismissed
                    if (value != null) {
                      // Show the helper person's details
                      String helperName = value['name'];
                      String helperPhoneNumber = value['phoneNumber'];
                      // Update the UI with helper details
                    } else {
                      // Match not found, handle accordingly
                    }
                  });
                },
                child: Text(
                  "Request",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF39C12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12), // reduce padding
                  elevation: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
