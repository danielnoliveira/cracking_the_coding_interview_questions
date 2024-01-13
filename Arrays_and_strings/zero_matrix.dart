import 'dart:math';

void main(List<String> args) {
  List<List<int>> matrix = [
    [1, 2, 3, 4],
    [1, 0, 6, 3],
    [1, 1, 1, 0],
    [1, 2, 2, 2],
    [3, 6, 8, 9],
  ];
  printMatrix((matrix));
  print("");
  printMatrix(zeroMatrix(matrix));
}

List<List<int>> zeroMatrix(List<List<int>> matrix) {
  List<List<int>> matrixAux = matrix.cast();

  int N = matrixAux.length;
  int M = matrixAux[0].length;

  List<Point> coords = [];

  for (var i = 0; i < N; i++) {
    for (var j = 0; j < M; j++) {
      if (matrixAux[i][j] == 0) {
        coords.add(Point(i, j));
      }
    }
  }

  for (var coord in coords) {
    _zeroColumnAndRow(coord.x.toInt(), coord.y.toInt(), matrixAux);
  }

  return matrixAux;
}

void _zeroColumnAndRow(int i, int j, List<List<int>> matrixAux) {
  matrixAux[i] = List.filled(matrixAux[i].length, 0);

  for (var row = 0; row < matrixAux.length; row++) {
    matrixAux[row][j] = 0;
  }
}

void printMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i].map((e) => e.toString()).join(' - '));
  }
}
