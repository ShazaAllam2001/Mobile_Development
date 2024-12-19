import 'dart:io';
 
void main(List<String> arguments) {
  String? inputNumber = stdin.readLineSync();
  int? number;
  if (inputNumber != null) {
    number = int.parse(inputNumber);
    if (number > 0) {
      print("Positive Number");
    }
    else if (number < 0) {
      print("Negative Number");
    }   

    if (number % 2 == 0) {
      print("Even Number");
    }
    else {
      print("Odd Number");
    }
  }
}
