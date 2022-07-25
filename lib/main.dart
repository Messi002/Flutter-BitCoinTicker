import 'package:bitcointicker/price_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.lightBlue),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.lightBlue,
        textTheme: const TextTheme(bodyText2: TextStyle(
          color: Colors.white,
        ))
      ),
      home: const PriceScreen(),
    );
  }
}
