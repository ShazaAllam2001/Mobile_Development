import 'package:dart_tasks/total_cost.dart' as total_cost;

void main(List<String> arguments) {
  Map<String, int> items = {
    "Milk": 20,
    "Eggs": 50,
    "Cheese": 30,
    "Tea": 20,
    "Apples": 50,
    "Chips": 10
  };
  int totalCostWithoutTaxes = total_cost.calculateWithoutTaxes(items);
  double totalCostWithTaxes = total_cost.calculateTaxes(totalCostWithoutTaxes, 10);
  print('Total Cost (Without Taxes): $totalCostWithoutTaxes');
  print('Total Cost (With Taxes): $totalCostWithTaxes');
}
