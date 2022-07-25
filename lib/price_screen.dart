import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        '😎 Coin Ticker'
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
           Padding(
            padding: EdgeInsets.fromLTRB(18.0,18.0,18.0,0),
          child: Card(
            color: Colors.lightBlue,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
              child: Padding(padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: )),
          ),
          ),
        ],
      ),
    );
  }
}
