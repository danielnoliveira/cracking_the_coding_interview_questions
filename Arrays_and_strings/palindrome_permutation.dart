bool palindromePermutation(String phrase) {
  Map<String, int> counts = {};

  _fillLettersOccurencesTable(phrase.toLowerCase(), counts);

  bool isValid = _thereIsLessThanOneOdd(phrase.toLowerCase(), counts);

  return isValid;
}

bool _thereIsLessThanOneOdd(String phrase, Map<String, int> counts) {
  int odds = 0;
  for (var v in counts.values) {
    if (v % 2 == 1) {
      odds += 1;
    }
    if (odds > 1) {
      return false;
    }
  }
  return odds <= 1;
}

void _fillLettersOccurencesTable(String phrase, Map<String, int> counts) {
  for (var s in phrase.runes) {
    String c = String.fromCharCode(s);
    if (c == ' ') {
      continue;
    }
    if (counts.containsKey(c)) {
      counts[c] = counts[c]! + 1;
    } else {
      counts[c] = 1;
    }
  }
}

void main(List<String> args) {
  String test1 = 'Tact Coa';

  print(palindromePermutation(test1));
}
