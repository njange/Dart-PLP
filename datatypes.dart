void main() {
  String player = "X";
  var gamedashboard = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];
  displayGameDashboard(gamedashboard);
}
void displayGameDashboard(List gamedashboard){
  print(
    "${gamedashboard[0][0] | gamedashboard[0][1] | gamedashboard[0][2]}");
  print("-----");
  print(
    "${gamedashboard[1][0] | gamedashboard[1][1] | gamedashboard[1][2]}");
  print("-----");
  print(
    "${gamedashboard[2][0] | gamedashboard[2][1] | gamedashboard[2][2]}");
}

