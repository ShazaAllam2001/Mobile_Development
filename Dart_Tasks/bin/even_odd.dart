//import 'package:dart_tasks/total_cost.dart' as total_cost;

void main(List<String> arguments) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in numbers) {
    switch (number % 2) {
      case 0:
        print("Even Number");
        break;
      case 1:
        print("Odd Number");
        break;
    }
  }
}
