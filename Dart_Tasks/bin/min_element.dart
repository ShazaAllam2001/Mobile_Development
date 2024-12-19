
void main(List<String> arguments) {
  List<int> numbers = [6, 9, 4, 2, 10, 5, 8, 7, 3];
  print("Min value in list ${minElement(numbers)}");
}

int minElement(List<int> numbers) {
  const int maxInteger =  0x7FFFFFFFFFFFFFFF;

  int minElement = maxInteger; // intialize minElement with a very big number
  for (int number in numbers) {
    // check each element if its smaller than minElement
    if (number < minElement) {
      minElement = number;
    }
  }
  return minElement;
}