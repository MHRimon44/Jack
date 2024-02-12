// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlackJack(),
      ),
    );
  }
}

class BlackJack extends StatelessWidget {
  const BlackJack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: 175,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/card2.png',
                  height: 150,
                  width: 175,
                ),
              ),
              Expanded(
                  child: Image.asset(
                'assets/images/card3.jpg',
                height: 150,
                width: 175,
              ))
            ],
          ),
          Image.asset(
            'assets/images/dealbutton.png',
            width: 125,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Player",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "CPU",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "How many time played the game = 0",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
