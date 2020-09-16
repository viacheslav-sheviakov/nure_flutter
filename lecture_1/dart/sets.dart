void main() {
  final names = {"Tom", "James", "Sarah"};

  print("1) Names: $names");

  names.add("Kate");
  names.add("Paul");

  print("2) Names: $names");

  // Already existing names
  names.add("Tom");
  names.add("James");

  print("3) Names: $names");
}