int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void calculatePoints(Map<String, int> team) {
    teamAPoints += (team['Free throws'] ?? 0) +
        (team['2 pointer'] ?? 0) * 2 +
        (team['3 pointer'] ?? 0) * 3;
  }

  calculatePoints(teamA);
  calculatePoints(teamB);

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
