//Enums are a way to create a set of named constants. Using enums makes your code
//more readable and helps you to avoid errors caused by typos.
enum Color { red, green, blue }

void main() {
  //Accessing enum values
  print(Color.red); // Color.red

  //Converting enums to strings
  String colorString = Color.green.toString();
  print(colorString); // Color.green

  //Accessing the index of an enum value
  print(Color.values[2]); // Color.blue

  //Iterating over enum values
  for (Color color in Color.values) {
    print(color);
  }

}
