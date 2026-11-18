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
  // by MNG
const String regNo = '26443';
final int d = int.parse(regNo.substring(regNo.length - 2));
final int t = int.parse(regNo[regNo.length - 1]);
  int D = 43;
  int T = 3;

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
