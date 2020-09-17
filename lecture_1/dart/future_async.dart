void main() async {
  final future = await doCalculations(1e6.toInt());

  print(future);

  print("Hello!");
}

Future<int> doCalculations(int maxValue) async {
  var n = 0;

  for (int i = 0; i < maxValue; i++) {
    n++;
  }

  return n;
}
