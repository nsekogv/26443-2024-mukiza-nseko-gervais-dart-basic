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
  print(initials('Mukiza Nseko Gervais'));
  print(initials(' Murerwa Nseko Hacyne '));
  print(initials(' '));
}