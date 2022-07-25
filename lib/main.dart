import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.lightBlue,
        textTheme: const TextTheme(bodyText2: TextStyle(
          color: Colors.black,
        ))
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('BitCoinTicker')),
        body: const Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
