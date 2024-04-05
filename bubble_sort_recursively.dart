import 'dart:io';
import 'dart:math';

void main() {
  print("Eded daxil edin");
  int input = int.parse(stdin.readLineSync()!);
  List<double> myList =
      List.generate(input, (index) => Random().nextDouble() * input);
  print("*" * 10);
  print(myList);
  myList = fixList(myList, 0);
  print("*" * 10);
  print(myList);
  print("*" * 10);
  listSorting(myList, myList.length);
  print(myList);
  print("*" * 10);
}

void listSorting(List<double> thisList, int n) {
  if (n != 1) {
    myLoopInList(n - 1, thisList, 0);
    listSorting(thisList, n - 1);
  }
}

void myLoopInList(int n, List<double> thisList, int i) {
  if (thisList[i] > thisList[i + 1]) {
    double temp = thisList[i];
    thisList[i] = thisList[i + 1];
    thisList[i + 1] = temp;
  }
//  if (thisList[i] < thisList[i + 1]) {
//     double temp = thisList[i+1];
//     thisList[i+1] = thisList[i];
//     thisList[i] = temp;
//   }
  if (i < n - 1) {
    myLoopInList(n, thisList, i + 1);
  }
}

List<double> fixList(List<double> list, int index) {
  if (index + 1 <= list.length) {
    list[index] = double.parse(list[index].toStringAsFixed(2));
    fixList(list, ++index);
  }
  return list;
}
