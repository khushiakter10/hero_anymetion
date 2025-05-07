import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Hero(
          tag: 'hero-image', // Same tag as on the first screen
          child: Container(
            width: 300,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/cups.jpg', // Your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
