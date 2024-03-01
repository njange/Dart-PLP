void printPyramid(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows - i; j++) {
      print(' ');
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      print('*');
    }
    print('');
  }
}

void main() {
  int rows = 5; // Change this value to adjust the number of rows in the pyramid
  printPyramid(rows);
}
