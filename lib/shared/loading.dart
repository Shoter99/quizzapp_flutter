import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text(
            'Loading...',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
