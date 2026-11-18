// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
  String city = 'Kigali';
  print(city.length); // 6
  print(city[city.length - 1]); // i
  print(city.substring(2, 4)); // ga
  print(city.toUpperCase().indexOf('A')); // 3
  print(city.contains('k')); // false
  print('$city.length'); // Kigali.length
  print('${city.length}'); // 6
  print(city * 2); //KigaliKigali
  city.toUpperCase();
  print(city); // KIGALI
  print(city.replaceAll('i', '!')); // K!gal!
  print('5' + 5.toString()); // 55
  print(int.parse('5') + 5); // 10
}
