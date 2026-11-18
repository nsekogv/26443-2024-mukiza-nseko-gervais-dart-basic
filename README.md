All answers: 

A 1.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() { 
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

int a = 17;
int b = 5;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
print(a / b); // 3.4
print(a ~/ b); // 3
print(a % b); // 2
print(-a % b); //3
print(-a ~/ b); //-3
print(-17.abs()); //-17
print(0.1 + 0.2 == 0.3); //false
print(10 == 10.0); // true
}

A 2.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  int x = 86; // Changed D to 43
  int y = 6; // Changed T to 3
  var z = x * 2 + y ~/ 4;
  z += x;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  print(z); //259
  print(z.isEven); // false
  print('$z' + '$x'); // 25986
}

B 1.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  String city = 'Kigali';
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
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


B 2.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

int countVowels(String text) {
  int count = 0;
  text = text.toLowerCase(); // This line turnes all letters to lowercase and capital letters wouldn't count if i removed
  for (int i = 0; i < text.length; i++) {
    if ('aeiou'.contains(text[i])) {
      count++;
    }
  }
  return count;
}

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  String fullName = "Mukiza nseko gervais";
  int vowels = countVowels(fullName);
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  print("$fullName has $vowels vowels");
}

B 3.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

String initials(String fullName) {
  List<String> names = fullName.trim().split(RegExp(r'\s+')); // Remove extra spaces and split the names
  if (fullName.trim().isEmpty) {
    return '';
  }
  String result = '';
  for (String name in names) {
    result += '${name[0].toUpperCase()}.';
  }

  return result;
}

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  print(initials('mukiza nseko gervais'));
  print(initials(' Murerwa nseko hacyne '));
  print(initials(' '));
}

C 1.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue;
    if (i == 4) break;

    //OUTPUT WILL BE 013

    print(i);
  }
}


C 2.

// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  int day = 2;
  // it produces a compiler error because dart does not allow a non-empty case to follow through another case un closed even when i change day to 1 the output is the same
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  switch (day) {
    case 1: 
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');
  }
}

C 3.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);
  // Output
  // 50
  // 70
  // 10

  int? bonus;
  print(bonus ?? 50);
  bonus ??= 70;
  // bonus ??= 90;
  print(bonus);
  int n = 10;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  do {
    print(n);
    n += 3;
  } while (n < 10);
}

C 4.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

int x = 43;
String result = '';
while (x > 0) {
if (x % 2 == 0) {
result += 'E';
} else {
result += 'O';
}
x -= 3;
}
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
print(result); // EOEOEOEOEOEOEOEOEOEOEOE
print(result.length); // 29
print(result.isEmpty ? 'nothing' : result[0]); // E
}

C 5.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

void drawTriangle(int height) {
  for (int i = 1; i <= height; i++) {
    int spaces = height - i;

    // Odd rows use *, even rows use #
    String symbol = i % 2 == 1 ? '*' : '#';

    print(' ' * spaces + symbol * i);
  }
}

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  int D = 43;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  drawTriangle(D + 3);
  drawTriangle(0);
  drawTriangle(-2);
}

D 1.
// Fullname: ukiza nseko gervais
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
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  bump();
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

D 2.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

int momoFee(int amount) {
  // by MNG
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  // by MNG
  if (phone.length != 10) {
    return 'INVALID';
  }

  String masked = phone.substring(0, 3);

  int i = 3;
  while (i < phone.length - 2) {
    masked += '*';
    i++;
  }

  masked += phone.substring(phone.length - 2);

  return masked;
}

void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  // by MNG
  int D = 43;
  int T = 3;

  String phone = '0788123456';
  int totalFees = 0;
  int i = 1;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  while (i <= D + 3) {
    int amount = i * 4000 + T * 100;
    int fee = momoFee(amount);

    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');

    totalFees += fee;
    i++;
  }

  print('Total fees: $totalFees RWF');
}

E 1.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

String grade(int mark) {
  if (mark >= 80) { // changed grade to 80 to check the highest grade first
    return 'A';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 50) { // changed grade to 50 to check the lowest grade if it is below 50
    return 'C';
  }
  return 'F';
}

bool isPalindrome(String word) { // True
  word = word.toLowerCase(); // Ignore uppercase/lowercase differences

  int i = 0;
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  while (i < word.length ~/ 2) { // Only compare half the word
    if (word[i] != word[word.length - 1 - i]) return false; //  Fix the invalid index
    i++;
  }
  return true;
}

// 1. It returns 'C' because the first condition, mark >= 50, is already true for 85.
// 2. Dart throws a RangeError (RangeError.index) because index 5 is outside the valid range.

// Justification (2–3 sentences):

// I choose case-insensitive palindrome checking because uppercase and lowercase letters should be treated as equivalent 
//when checking whether a word reads the same forwards and backwards. Therefore, 'Level' should return true
// because it becomes 'level' after converting it to lowercase.

F 1.1.
// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

import 'dart:io';

// by MNG
int momoFee(int amount) {
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

// by MNG
String formatRwf(int amount) {
  String number = amount.abs().toString();
  String formatted = '';

  int i = number.length - 1;
  int count = 0;

  while (i >= 0) {
    formatted = number[i] + formatted;
    count++;

    if (count == 3 && i > 0) {
      formatted = ',' + formatted;
      count = 0;
    }

    i--;
  }

  if (amount < 0) {
    formatted = '-' + formatted;
  }

  return '$formatted RWF';
}

// by MNG
bool isValidPin(String pin) {
  if (pin.length != 5) {
    return false;
  }

  if (pin == '12345' || pin == '77777') {
    return false;
  }

  int i = 0;

  while (i < pin.length) {
    if (pin.codeUnitAt(i) < 48 || pin.codeUnitAt(i) > 57) {
      return false;
    }

    i++;
  }

  return true;
}

// by MNG
int sendMoney(int balance, int amount) {
  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance -= amount + fee;

  print(
    'Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). '
    'New balance: ${formatRwf(balance)}',
  );

  return balance;
}

// by MNG
int buyAirtime(int balance, int amount) {
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance -= amount;

  print(
    'Airtime purchased: ${formatRwf(amount)}. '
    'New balance: ${formatRwf(balance)}',
  );

  return balance;
}

// by MNG
void main() {
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);

  // by MNG
  int D = 1; // Replace with your assigned D
  int T = 7; // Replace with your assigned T
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  print('PIN validation:');
  print(isValidPin('12345'));
  print(isValidPin('77777'));
  print(isValidPin('4821'));
  print(isValidPin('48a21'));
  print(isValidPin('4821$D'));

  int balance = 20000 + T * 500;

  print('\nStarting balance: ${formatRwf(balance)}');

  int amount = (D + 1) * 3000;

  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);

  balance = buyAirtime(balance, 1000);

  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);

  print('\nFinal balance: ${formatRwf(balance)}');

  // Additional formatRwf tests:
  print(formatRwf(0));        // Expected: 0 RWF
  print(formatRwf(999));      // Expected: 999 RWF
  print(formatRwf(1000));     // Expected: 1,000 RWF
  print(formatRwf(1250000));  // Expected: 1,250,000 RWF
  print(formatRwf(-5000));    // Expected: -5,000 RWF
  print(formatRwf(-1234567)); // Expected: -1,234,567 RWF (edge case)

  // Additional isValidPin tests:
  print(isValidPin('00000')); // Expected: false
  print(isValidPin('12346')); // Expected: true
  print(isValidPin('55555')); // Expected: false
  print(isValidPin('12'));    // Expected: false
  print(isValidPin('12@45')); // Expected: false
  print(isValidPin('99990')); // Expected: true
}

F 1.2.
bool isValidPin(String pin) {
  // by MNG
  if (pin.length != 5 || pin == '12345') {
    return false;
  }
print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  int i = 0;
  bool allSame = true;

  while (i < pin.length) {
    int digit = pin.codeUnitAt(i);

    if (digit < 48 || digit > 57) {
      return false;
    }

    if (pin[i] != pin[0]) {
      allSame = false;
    }

    i++;
  }

  return !allSame;
}





