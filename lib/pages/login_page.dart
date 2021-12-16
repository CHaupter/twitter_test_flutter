import 'package:flutter/material.dart';
import 'package:twitter_test_flutter/service/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN TWITTER"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
            child: Column(
          children: [GoogleSignIn()],
        )),
      ),
    );
  }
}
