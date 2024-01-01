String urlify(String phrase) {
  StringBuffer urlifyPhrase = StringBuffer();

  for (var r in phrase.runes) {
    String c = String.fromCharCode(r);
    if (c == ' ') {
      urlifyPhrase.write('%20');
    } else {
      urlifyPhrase.write(c);
    }
  }

  return urlifyPhrase.toString();
}

void main(List<String> args) {
  String test1 = 'Mr John Smith';

  print(urlify(test1));
}
