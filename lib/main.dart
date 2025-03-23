import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/all_plans_page.dart';

void main() {
  runApp(MyEsimApp());
}

class MyEsimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eSimSim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => const HomePage(),
        '/plans': (context) => const AllPlansPage(),
      },
    );
  }
}
