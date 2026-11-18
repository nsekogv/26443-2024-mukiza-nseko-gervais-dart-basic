// Fullname: mukiza nseko gervais
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
