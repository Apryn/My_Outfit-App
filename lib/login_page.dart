import 'package:flutter/material.dart';
import 'Theme.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text("Login")],
        ),
      ),
    );
  }
}
