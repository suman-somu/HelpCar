import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class helperPreviousPath extends StatefulWidget {
  const helperPreviousPath({super.key});

  @override
  State<helperPreviousPath> createState() => _helperPreviousPathState();
}

class _helperPreviousPathState extends State<helperPreviousPath> {
  final List<Map<String, String>> _previousPaths = [
    {'from': 'New York', 'to': 'Los Angeles'},
    // {'from': 'San Francisco', 'to': 'Las Vegas'},
    // {'from': 'Seattle', 'to': 'Portland'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Paths'),
      ),
      body: ListView.builder(
        itemCount: _previousPaths.length,
        itemBuilder: (BuildContext context, int index) {
          final path = _previousPaths[index];
          return _buildTile(path['from']!, path['to']!);
        },
      ),
    );
  }

  Widget _buildTile(String from, String to) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 216, 89),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 165, 165, 165),
            blurRadius: 15.0, // soften the shadow
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                from,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_right_alt,
                size: 30,
              ),
              Flexible(
                child: Text(
                  to,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),

                  // overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
