import "dart:async";

void main() async {
  // Start asynchronous operations
  print("Start of main");
  Future<String> fetchUserData() {
    return Future.delayed(Duration(seconds: 3), () {
      return "John Doe";
    });
  }

  String result = await fetchUserData();

  print("End of main - User data: $result");

  // Future<String> fetchUserDataRenamed() {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     return "John Doe";
  //   });
  // }
}

