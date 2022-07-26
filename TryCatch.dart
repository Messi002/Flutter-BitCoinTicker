List<int> winningNumbers = [12, 6, 34, 22, 41, 9];

void main(List<String> args) {
  List<int> ticket1 = [45, 2, 9, 18, 12, 33];
  List<int> ticket2 = [41, 17, 26, 32, 7, 35];

    checkNumbers(ticket1);
  checkNumbers(ticket2);
}

void checkNumbers(List<int> myNumbers) {
  int winNum = 0;
  for (int element in myNumbers) {
    for (int num in winningNumbers) {import 'package:flutter/material.dart';

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

      if (element == num) {
        winNum++;
      }
    }
  }
      print('You have $winNum matching numbers');

}
