// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: unnecessary_const
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/image1.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              const MyCont(textK: 'Get Started', widthk: 200),
              SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyCont(
                    textK: 'Sign Up',
                    widthk: 100,
                  ),
                  MyCont(
                    textK: 'Login',
                    widthk: 100,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCont extends StatelessWidget {
  final String textK;
  final double widthk;
  const MyCont({super.key, required this.textK, required this.widthk});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthk,
      height: 60,
      color: Colors.blueAccent,
      alignment: Alignment.center,
      child: Text(
        textK,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
