int calculateWithoutTaxes(Map<String, int> items) {
  int totalCost = 0;
  for (final item in items.keys) {
    totalCost += items[item]??0; 
  }
  return totalCost;
}

double calculateTaxes(int totalWithoutTaxes, int taxPercentage) {
  return totalWithoutTaxes * (1 + taxPercentage/100);
}