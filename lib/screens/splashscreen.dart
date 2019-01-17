import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushReplacementNamed('/menu'),
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/images/NikeWhite.png',
                height: 80,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
