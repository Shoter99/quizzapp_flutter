import 'package:flutter/material.dart';
import 'package:quizapp/services/auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Sign Out",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(15),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
