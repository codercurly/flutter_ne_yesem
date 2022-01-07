import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: foodPage(),
      ),
    );
  }
}

class foodPage extends StatefulWidget {
  const foodPage({Key? key}) : super(key: key);

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List corbaadi = [
    'Mercimek çorbası',
    'Tarhana çorbası',
    'Tavuksuyu çorbası',
    'Düğün çorbası',
    'Yoğurt çorbası'
  ];
  List yemekadi = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List tatliadi = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazandibi', 'Dondurma'];
  void change() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                onPressed: change,

                child: Image.asset('assets/corba_$corbaNo.jpg')),
          )),
          Text(corbaadi[corbaNo-1], style: TextStyle(fontSize: 20),),
          Container(
            width: 300,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                onPressed:change,
                child: Image.asset('assets/yemek_$yemekNo.jpg')),
          )),
          Text(yemekadi[yemekNo-1], style: TextStyle(fontSize: 20),),
          Container(
            width: 300,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                onPressed:
                  change,

                child: Image.asset('assets/tatli_$tatliNo.jpg')),
          ),
          ),
          Text(tatliadi[tatliNo-1], style: TextStyle(fontSize: 20),),
          Container(
            width: 300,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
