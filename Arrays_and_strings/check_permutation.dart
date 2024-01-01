bool checkPermutation(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }
  Map<String, int> album = Map.fromIterable(
    List.generate(26, (index) => index + 97),
    key: (element) {
      return String.fromCharCode(element);
    },
    value: (element) => 0,
  );

  for (var c in s1.runes) {
    String char = String.fromCharCode(c).toLowerCase();

    album[char] = album[char]! + 1;
  }
  for (var c in s2.runes) {
    String char = String.fromCharCode(c).toLowerCase();
    album[char] = album[char]! - 1;
    if (album[char]! < 0) {
      return false;
    }
  }

  return album.values.every((e) => e == 0);
}

void main(List<String> args) {
  String s1 = "ABC";
  String s2 = "CBA";
  String s3 = "ABD";

  print(checkPermutation(s1, s2));
  print(checkPermutation(s1, s3));
}
