bool hasStringOnlyUniqueChars(String s) {
  Map<String, int> album = Map.fromIterable(
    List.generate(26, (index) => index + 97),
    key: (element) {
      return String.fromCharCode(element);
    },
    value: (element) => 0,
  );

  for (var c in s.runes) {
    String char = String.fromCharCode(c).toLowerCase();
    if (album[char]! > 0) {
      return false;
    } else {
      album[char] = album[char]! + 1;
    }
  }

  return true;
}

void main(List<String> args) {
  String test1 = 'abcdefgh';

  print(hasStringOnlyUniqueChars(test1));

  String test2 = 'abcdefgha';

  print(hasStringOnlyUniqueChars(test2));
}
