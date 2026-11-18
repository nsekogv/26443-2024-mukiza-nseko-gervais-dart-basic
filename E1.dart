// Fullname: Mukiza nseko gervais
// Reg No: 26443/2024

String grade(int mark) {
  if (mark >= 80) {
    // changed grade to 80 to check the highest grade first
    return 'A';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 50) {
    // changed grade to 50 to check the lowest grade if it is below 50
    return 'C';
  }
  return 'F';
}

bool isPalindrome(String word) {
  // True
  word = word.toLowerCase(); // Ignore uppercase/lowercase differences

  const String regNo = '26443';
  final int d = int.parse(regNo.substring(regNo.length - 2));
  final int t = int.parse(regNo[regNo.length - 1]);
  int i = 0;
  print("Reg no: ${regNo} | D = ${d} | T = ${t}");
  while (i < word.length ~/ 2) {
    // Only compare half the word
    if (word[i] != word[word.length - 1 - i])
      return false; // 	Fix the invalid index
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
