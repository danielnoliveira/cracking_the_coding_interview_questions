void main() {
  List<String> branks = List.filled(10000, "teste123teste123teste123teste123");
  int timeStart = DateTime.now().millisecondsSinceEpoch;
  String settence = "";
  for (var s in branks) {
    settence += s;
  }
  int timeEnd = DateTime.now().millisecondsSinceEpoch - timeStart;
  print('Time(s) with String: ${timeEnd} mls');
  timeStart = DateTime.now().millisecondsSinceEpoch;
  StringBuffer settence2 = StringBuffer();
  for (var s in branks) {
    settence2.write(s);
  }
  timeEnd = DateTime.now().millisecondsSinceEpoch - timeStart;
  print('Time(s) with StringBuffer: ${timeEnd} mls');
}
