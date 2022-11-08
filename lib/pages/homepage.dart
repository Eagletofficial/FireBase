import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 50,
              width: 100,
              color: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: (() {
              FirebaseAuth.instance.signOut();
            }),
            child: const Text('Sign out'),
          ),
        ],
      ),
    );
  }
}
