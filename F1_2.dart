bool isValidPin(String pin) {
  // by MNG
  const String regNo = '26443';
  final int d = int.parse(regNo.substring(regNo.length - 2));
  final int t = int.parse(regNo[regNo.length - 1]);
  print("Reg no: ${regNo} | D = ${d} | T = ${t}");

  if (pin.length != 5 || pin == '12345') {
    return false;
  }

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
