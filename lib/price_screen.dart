import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';

  Dropdown dropDown = Dropdown();

  DropdownButton<dynamic> AndriodDropDown() {
    return DropdownButton<dynamic>(
      menuMaxHeight: 300.0,
      value: selectedCurrency,
      items: dropDown.getCurrencyList(),
      onChanged: (value) {
        setState(
          () {
            selectedCurrency = value.toString();
            print(value);
          },
        );
      },
    );
  }

  CupertinoPicker iOSPicker() {
 List<Text> cupertinoText = [];
    for (var element in kcurrenciesList) {
      var newText = Text(element);
      cupertinoText.add(newText);
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: cupertinoText,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('😎 Coin Ticker')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlue,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            color: Colors.lightBlue,
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Platform.isIOS ? iOSPicker() : AndriodDropDown(),
          )
        ],
      ),
    );
  }
}
