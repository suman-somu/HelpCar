import 'package:flutter/material.dart';

class RideDetailsPage extends StatefulWidget {
  final String name;
  final String phone;
  final String pickupLocation;

  RideDetailsPage({
    required this.pickupLocation,
    required this.name,
    required this.phone,
  });

  @override
  _RideDetailsPageState createState() => _RideDetailsPageState();
}

class _RideDetailsPageState extends State<RideDetailsPage> {
  bool _hasArrived = false;

  @override
  Widget build(BuildContext context) {
    bool _buttonDisabled = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ride Details'),
        backgroundColor: Color(0xFFFFA267),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pickup Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
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
                    widget.pickupLocation,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Pickup Time: 10:00 AM',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Name: ${widget.name}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Phone Number: ${widget.phone}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _buttonDisabled
                  ? null
                  : () {
                      setState(() {
                        _buttonDisabled = true;
                      });
                    },
              child: Text(
                _hasArrived ? 'Arrived' : 'Tap when you arrive',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    _hasArrived ? Color(0xFF00C853) : Color(0xFFD76B73),
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
