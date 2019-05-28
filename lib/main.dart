import 'package:flutter/material.dart';

import 'Homepage.dart';



void main()=>runApp(flutterst1());
class flutterst1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Homepage()
    );
  }
}
