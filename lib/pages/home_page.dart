import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int soljakKubik = 1;
  int onjakKubik = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Тапшырма 5', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      soljakKubik = math.Random().nextInt(6) + 1;
                      onjakKubik = math.Random().nextInt(6) + 1;

                      dev.log('soljakKubik: $soljakKubik');
                    });
                  },
                  child: Image.asset('assets/dice$soljakKubik.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onjakKubik = math.Random().nextInt(6) + 1;
                      soljakKubik = math.Random().nextInt(6) + 1;
                      dev.log('onjakKubik: $onjakKubik');
                    });
                  },
                  child: Image.asset(
                    'assets/dice$onjakKubik.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
