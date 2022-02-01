import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Hi there! \nThis is an about page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
