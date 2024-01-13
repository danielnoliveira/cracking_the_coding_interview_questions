// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pixel {
  late int byte1;
  late int byte2;
  late int byte3;
  late int byte4;
  Pixel({
    required this.byte1,
    required this.byte2,
    required this.byte3,
    required this.byte4,
  });

  Pixel.mock({int v = 0}) {
    byte1 = 0 + v;
    byte2 = 0 + v;
    byte3 = 0 + v;
    byte4 = 0 + v;
  }

  @override
  String toString() {
    return '$byte1, $byte2, $byte3, $byte4';
  }
}

void main(List<String> args) {
  List<List<Pixel>> matrix = [
    [
      Pixel.mock(v: 1),
      Pixel.mock(v: 1),
      Pixel.mock(v: 1),
    ],
    [
      Pixel.mock(v: 2),
      Pixel.mock(v: 2),
      Pixel.mock(v: 2),
    ],
    [
      Pixel.mock(v: 3),
      Pixel.mock(v: 3),
      Pixel.mock(v: 3),
    ]
  ];

  printMatrix(rotateMatrix(matrix));
}

List<List<Pixel>> rotateMatrix(List<List<Pixel>> matrix) {
  List<List<Pixel>> matrixAux = matrix.cast();

  int N = matrixAux.length;

  for (var i = 0; i < (N ~/ 2.0); i++) {
    for (var j = i; j < N - i - 1; j++) {
      var temp = matrixAux[i][j];
      matrixAux[i][j] = matrixAux[N - 1 - j][i];
      matrixAux[N - 1 - j][i] = matrixAux[N - 1 - i][N - 1 - j];
      matrixAux[N - 1 - i][N - 1 - j] = matrixAux[j][N - 1 - i];
      matrixAux[j][N - 1 - i] = temp;
    }
  }

  return matrixAux;
}

void printMatrix(List<List<Pixel>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i].map((e) => e.toString()).join(' --- '));
  }
}
