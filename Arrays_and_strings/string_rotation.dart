void main(List<String> args) {
  String s1 = "waterbottle";
  String s2 = "erbottlewat";

  print(isRotation(s1, s2));
}

bool isRotation(String s1, String s2) {
  if (s1.length == s2.length && s1.length > 0) {
    return isSubstring(s1, s2);
  }

  return false;
}

bool isSubstring(String s1, String s2) {
  return '$s1$s1'.contains(s2);
}
