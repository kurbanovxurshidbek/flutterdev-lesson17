import 'package:flutter/material.dart';
import 'package:ngdemo15/pages/signin_page.dart';
import 'package:ngdemo15/services/auth_service.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Post List"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            AuthService.signOutUser(context);
          },
          child: Text("Sign Out"),
        ),
      ),
    );
  }
}
