// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dices = [
    "assets/images/d1.png",
     "assets/images/d2.png",
      "assets/images/d3.png",
       "assets/images/d4.png",
        "assets/images/d5.png",
         "assets/images/d6.png",
  ];

int? randomNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice App")),
    body: Center(
      child: InkWell(
        onTap: () {
          randomNumber = Random().nextInt(6);
          print(randomNumber);
          setState(() { });
        },
        child: Image.asset(
          height: 200,
          width: 200,
          randomNumber == null
          ? "assets/images/button.png"
          : dices[randomNumber!]
          ),
      ),
    ),);
  }
}