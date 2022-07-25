import 'package:flutter/material.dart';

const List<String> kcurrenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> crytoList = ['BTC', 'ETH', 'LTC'];

class CoinData {}

class Dropdown {
  List<DropdownMenuItem> getCurrencyList() {
    List<DropdownMenuItem<String>> DropdownItems = [];
    for (int i = 0; i < kcurrenciesList.length; i++) {
      String currency = kcurrenciesList[i];
      var New = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      DropdownItems.add(New);
    }
    return DropdownItems;
  }
}
