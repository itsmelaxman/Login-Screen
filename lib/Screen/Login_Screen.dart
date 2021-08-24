import 'package:flutter/material.dart';
import 'package:loginscreen/Screen/homepage_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25, color: Colors.indigo[500]);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          )),
    );

    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          )),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(32.0),
      color: Colors.indigo[600],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        onPressed: () {
          if (username == "laxu" && password == "password") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(username, password)));
          } else {
            print("Login failed");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.supervised_user_circle,
                  size: 100,
                ),
                SizedBox(
                  height: 100,
                ),
                usernameField,
                SizedBox(
                  height: 10,
                ),
                passwordField,
                SizedBox(
                  height: 30,
                ),
                myLoginButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
