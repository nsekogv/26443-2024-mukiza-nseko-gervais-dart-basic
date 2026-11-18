// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
  
  // Output
  // 50
  // 70
  // 10

  int? bonus;
  print(bonus ?? 50);
  bonus ??= 70;
  bonus ??= 90;
  print(bonus);
  int n = 10;
  do {
    print(n);
    n += 3;
  } while (n < 10);
}
