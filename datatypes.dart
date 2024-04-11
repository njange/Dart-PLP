void main() {
  String player = "X";
  var gamedashboard = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];
  displayGameDashboard(gamedashboard);
}

void displayGameDashboard(List gamedashboard) {
  print("${gamedashboard[0][0] | gamedashboard[0][1] | gamedashboard[0][2]}");
  print("-----");
  print("${gamedashboard[1][0] | gamedashboard[1][1] | gamedashboard[1][2]}");
  print("-----");
  print("${gamedashboard[2][0] | gamedashboard[2][1] | gamedashboard[2][2]}");
}

void play(List gamedashboard, String player) {
  print("Player $player, make your move");
  var box = int.tryParse(stdin.readLineSync()!);
  if (box != null && box > 1 && box < 9) {
    var row = (box - 1) ~/ 3; //calculate row
    var col = (box - 1) % 3; //calculate column
    if (gamedashboard[row][col] == " ") {
      gamedashboard[row][col] = player;
      checkwinner(gamedashboard, player);
    } else {
      print("This box is already taken. Try again");
      play(gamedashboard, player);
    }
  } else {
    print("Invalid input. Try again");
    play(gamedashboard, player);
  }
}

void checkWinner(List gamedashboard, String player) {
  displayGameDashboard(gamedashboard);
  if (gamedashboard[0][0] == player &&
      gamedashboard[0][1] == player &&
      gamedashboard[0][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[1][0] == player &&
      gamedashboard[1][1] == player &&
      gamedashboard[1][2] &&
      gamedashboard[1][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[2][0] == player &&
      gamedashboard[2][1] == player &&
      gamedashboard[2][2] &&
      gamedashboard[2][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == player &&
      gamedashboard[1][0] == player &&
      gamedashboard[2][0] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][1] == player &&
      gamedashboard[1][1] == player &&
      gamedashboard[2][1] &&
      gamedashboard[0][1].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == player &&
      gamedashboard[1][2] == player &&
      gamedashboard[2][2] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == player &&
      gamedashboard[1][1] == player &&
      gamedashboard[2][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == player &&
      gamedashboard[1][1] == player &&
      gamedashboard[2][0] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else {
    if (player == "X") {
      play(gamedashboard, "O");
    } else {
      play(gamedashboard, "X");
    }
  }
  
}
