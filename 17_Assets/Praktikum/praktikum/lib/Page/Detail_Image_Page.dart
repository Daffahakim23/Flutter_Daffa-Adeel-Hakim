import 'package:flutter/material.dart';

class MyImageDetailPage extends StatelessWidget {
  final String imageUrl;

  MyImageDetailPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
