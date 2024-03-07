void main() {
  int number = 10;

  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }

  for (int i = 1; i <= 5; i++) {
    print("Count: $i");
  }

  List<String> fruits = ["apple", "banana", "orange"];

  for (String fruit in fruits) {
    print("I like $fruit");
  }

  int count = 0;
  while (count < 3) {
    print("Count: $count");
    count++;
  }

  int x = 5;
  switch (x) {
    case 1:
      print("x is 1");
      break;
    case 2:
      print("x is 2");
      break;
    default:
      print("x is neither 1 nor 2");
  }
}