enum Country {
  usa,
  canada,
  mexico,
  brazil,
  india,
}

void main() {
  // Accessing enum values
  print(Country.usa); // Country.usa

  // Converting enums to strings
  String countryString = Country.canada.toString();
  print(countryString); // Country.canada

  // Accessing the index of an enum value
  print(Country.values[2]); // Country.mexico

  // Iterating over enum values
  for (Country country in Country.values) {
    print(country);
  }
}
