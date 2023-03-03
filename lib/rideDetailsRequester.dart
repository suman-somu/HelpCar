import 'package:flutter/material.dart';

class RideDetailsRequesterPage extends StatefulWidget {
  final String name;
  final String phone;

  RideDetailsRequesterPage({required this.name, required this.phone});

  @override
  _RideDetailsRequesterPageState createState() =>
      _RideDetailsRequesterPageState();
}

class _RideDetailsRequesterPageState extends State<RideDetailsRequesterPage> {
  bool _isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your help is on the way',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFFFFA267),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Name: ${widget.name}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Phone Number: ${widget.phone}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _isButtonDisabled
                  ? null
                  : () {
                      setState(() {
                        _isButtonDisabled = true;
                      });
                      // TODO: Perform action on button click
                    },
              child: Text(
                'Helper Reached',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00C853),
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
    );
  }
}
