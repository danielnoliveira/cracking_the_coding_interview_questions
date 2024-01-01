import 'dart:math';

bool oneAway(String str1, String str2) {
  int lengthDifference = (str1.length - str2.length);
  if (lengthDifference > 1 || lengthDifference < -1) {
    return false;
  }

  if (lengthDifference == -1) {
    return _checkIfALetterCanBeInsert(str1, str2);
  } else if (lengthDifference == 1) {
    return _checkIfALetterCanBeInsert(str2, str1);
  } else {
    return _checkIfItCanBeReplaced(str1, str2);
  }
}

bool _checkIfALetterCanBeInsert(String str1, String str2) {
  int index1 = 0;
  int index2 = 0;

  while (index1 < str1.length && index2 < str2.length) {
    if (str1.substring(index1, index1 + 1) !=
        str2.substring(index2, index2 + 1)) {
      if (index1 != index2) {
        return false;
      }
      index2++;
    } else {
      index1++;
      index2++;
    }
  }
  return true;
}

bool _checkIfItCanBeReplaced(String str1, String str2) {
  int count = 0;
  for (var i = 0; i < str1.length; i++) {
    if (str1.substring(i, i + 1) == str2.substring(i, i + 1)) {
      count++;
    }
  }
  return (str1.length - count) <= 1;
}

void main(List<String> args) {
  String str1 = 'pale';
  String str2 = 'ple';

  print(oneAway(str1, str2));

  String str3 = 'pales';
  String str4 = 'pale';

  print(oneAway(str3, str4));

  String str5 = 'bale';

  print(oneAway(str1, str5));

  String str6 = 'bake';

  print(oneAway(str1, str6));
}
