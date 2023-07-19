String inner(String name) {
  String firstName = name.split(" ")[0];
  return "Hello Agent B.$firstName";
}

void outer(String name, String id) {
  String innerOutput = inner(name);
  print("$innerOutput your id is $id");
}
