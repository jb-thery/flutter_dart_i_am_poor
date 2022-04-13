import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dart_i_am_poor/components/carbon_image.dart';

const String title = 'I am Poor 😞';
const int maxImageSize = 100;

void main() {
  runApp(const IAmPoorApp());
}

class IAmPoorApp extends StatefulWidget {
  const IAmPoorApp({Key? key}) : super(key: key);

  @override
  State<IAmPoorApp> createState() => _IAmPoorAppState();
}

class _IAmPoorAppState extends State<IAmPoorApp> {
  double carbon1 = 100.0;
  double carbon2 = 70.0;
  double carbon3 = 50.0;

  double randomSize() {
    int size = Random().nextInt(maxImageSize) + 50;

    return size.toDouble();
  }

  void randomize() {
    setState(() {
      carbon1 = randomSize();
      carbon2 = randomSize();
      carbon3 = randomSize();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GestureDetector(
          onTap: randomize,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CarbonImage(size: carbon1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CarbonImage(size: carbon2),
                    CarbonImage(size: carbon3),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
