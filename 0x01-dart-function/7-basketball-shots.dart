int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  for (var shotType in teamA.keys) {
    if (teamA.containsKey(shotType) && teamB.containsKey(shotType)) {
      int teamAShots = teamA[shotType]!;
      int teamBShots = teamB[shotType]!;
      int points = 0;

      if (shotType == 'Free throws') {
        points = 1;
      } else if (shotType == '2 pointer') {
        points = 2;
      } else if (shotType == '3 pointer') {
        points = 3;
      }

      teamAPoints += teamAShots * points;
      teamBPoints += teamBShots * points;
    }
  }

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
