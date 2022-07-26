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
    for (int num in winningNumbers) {
      if (element == num) {
        winNum++;
      }
    }
  }
      print('You have $winNum matching numbers');

}
