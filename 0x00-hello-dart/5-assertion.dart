void main(List<String> args) {
  var score = 80;

  assert(score >= 80, "Uncaught Error: Assertion failed: \"The score must be bigger or equal to 80\"");

  print(score >= 80 ? "You Passed" : "");
}