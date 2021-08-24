import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late final String username;
  late final String password;
  HomePage(
    this.username,
    this.password,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.indigo[500],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome," + " " + username,
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "Developed By : Laxman Magarati",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
