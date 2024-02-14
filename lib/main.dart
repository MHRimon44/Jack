// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, avoid_print

import 'dart:math';

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

class BlackJack extends StatefulWidget {
  const BlackJack({super.key});

  @override
  State<BlackJack> createState() => _BlackJackState();
}

class _BlackJackState extends State<BlackJack> {
  int leftCardNumber = 2;
  int rightCardNumber = 2;
  int playerResult = 0;
  int cpuResult = 0;
  int totalGameCount = 0;
  @override
  Widget build(BuildContext context) {
    print('Built Called');
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // TextButton(
          //   onPressed: () {
          //     print('Pressed');
          //   },
          //   child: Text('Magic Jack'),
          // ),
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: 175,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/card$leftCardNumber.png',
                  height: 150,
                  width: 175,
                ),
              ),
              Expanded(
                  child: Image.asset(
                'assets/images/card$rightCardNumber.png',
                height: 150,
                width: 175,
              ))
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                int mLeftNumber = Random().nextInt(13);
                int mRightNumber = Random().nextInt(13);
                leftCardNumber = mLeftNumber + 2;
                rightCardNumber = mRightNumber + 2;
                totalGameCount = totalGameCount + 1;

                if (leftCardNumber != rightCardNumber) {
                  if (leftCardNumber > rightCardNumber) {
                    playerResult = playerResult + 1;
                  } else {
                    cpuResult = cpuResult + 1;
                  }
                }

                print(leftCardNumber);
              });
            },
            child: Image.asset(
              'assets/images/dealbutton.png',
              width: 125,
              height: 150,
            ),
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
                    '$playerResult',
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
                    '$cpuResult',
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
            "How many time played the game = $totalGameCount",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
