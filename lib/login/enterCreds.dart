import 'package:flutter/material.dart';

class EnterCreds extends StatefulWidget {
  const EnterCreds({Key? key}) : super(key: key);

  @override
  _EnterCredsState createState() => _EnterCredsState();
}

class _EnterCredsState extends State<EnterCreds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text('SignIn'), Text('SignUp')],
          ),
        ],
      ),
    );
  }
}
