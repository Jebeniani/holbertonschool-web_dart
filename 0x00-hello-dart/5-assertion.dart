void main(List<String> args) {
  var score = 79;
  try {
    print(score >= 80 ? 'You Passed' : throw AssertionError("The score must be bigger or equal to 80"));
  } catch (e) {
    print(e);
  }
}