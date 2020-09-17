void main() {
  final names = {"Tom", "James", "Sarah"};
  final higherSet = {{1, 2}, {1, 2}};

  print("1) Names: $names");

  names.add("Kate");
  names.add("Paul");

  print("2) Names: $names");

  // Already existing names
  names.add("Tom");
  names.add("James");

  print("3) Names: $names");

  final zeroElement = names.elementAt(0);

  print("[0]: $zeroElement");

  print("$higherSet");
}