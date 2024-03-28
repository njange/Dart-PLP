void main(){
  // Current date and time
  DateTime now = DateTime.now();
  print(now);

  // Date and time in a specific timezone
  DateTime nowInUtc = DateTime.now().toUtc();
  print(nowInUtc);

  //Difference between two dates
  DateTime date1 = DateTime(2023, 10, 10);
  DateTime date2 = DateTime(2021, 10, 20);
  Duration difference = date2.difference(date1);
  print(difference.inDays);


  // Add days to a date
  DateTime date = DateTime(2021, 10, 10);
  DateTime newDate = date.add(Duration(days: 10));
  print(newDate);

  // Subtract days from a date
  DateTime date3 = DateTime(2021, 10, 20);
  DateTime newDate3 = date3.subtract(Duration(days: 10));
  print(newDate3);

  // Compare two dates
  DateTime date4 = DateTime(2021, 10, 10);
  DateTime date5 = DateTime(2021, 10, 20);
  print(date4.isBefore(date5));

  // Format date
  DateTime date6 = DateTime(2021, 10, 10);
  String formattedDate = "${date6.day}-${date6.month}-${date6.year}";
  print(formattedDate);




}