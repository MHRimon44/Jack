// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, avoid_print

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jack/models/card.dart';

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
  MyCard playingCard2 = MyCard(2, 2, 0, 0, 0);
  //MyCard playingCard3 = MyCard(3, 3, 0, 0, 0);

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
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: 175,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/card${playingCard2.getLeftNumber()}.png',
                  height: 150,
                  width: 175,
                ),
              ),
              Expanded(
                  child: Image.asset(
                'assets/images/card${playingCard2.getRightNumber()}.png',
                height: 150,
                width: 175,
              ))
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                playingCard2.changeCardNumber();
                playingCard2.updateResult();
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
                    '${playingCard2.getUserResult()}',
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
                    '${playingCard2.getCpuResult()}',
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
            "How many time played the game = ${playingCard2.getTotalPlayed()}",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
