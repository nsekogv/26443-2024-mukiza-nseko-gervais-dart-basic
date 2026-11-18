// Fullname: mukiza nseko gervais
// Reg No: 26443/2024

int count = 1;
void bump() {
  int count = 10;
  count++;
}

void doubleIt(int value) {
  value = value * 2;
}

int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;
void main() {
  const String regNo = '26443';
  final int d = int.parse(regNo.substring(regNo.length - 2));
  final int t = int.parse(regNo[regNo.length - 1]);
  bump();
  print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  print(count);
  int v = 5;
  doubleIt(v);
  print(v);
  print(addVat(1000));
  print(addVat(999));
  print(addVat(1000, rate: 0));
}

// 1
// 5
// 1180
// 1178
// 1000

// Because Dart's ~/ operator performs integer division and discards the decimal portion.
