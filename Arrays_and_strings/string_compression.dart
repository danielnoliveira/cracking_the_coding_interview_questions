void main(List<String> args) {
  String test1 = 'aabcccccaaa';

  print(stringCompression(test1));
}

String stringCompression(String str) {
  StringBuffer compressedString = StringBuffer();

  String lastOne = str.substring(0, 1);
  int countCurrentLetter = 0;
  for (var r in str.runes) {
    String c = String.fromCharCode(r);
    if (c == lastOne) {
      countCurrentLetter++;
    } else {
      compressedString.write('$lastOne$countCurrentLetter');
      lastOne = c;
      countCurrentLetter = 1;
    }
  }
  compressedString.write('$lastOne$countCurrentLetter');
  return compressedString.toString();
}
