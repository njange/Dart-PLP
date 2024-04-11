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
  print("${gamedashboard[0][0] | gamedashboard[0][1] | gamedashboard[0][2]}");
}

