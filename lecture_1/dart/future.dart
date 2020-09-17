void main() {
  final future = Future<int>(() {
    var n = 0;

    for (int i = 0; i < 1e6; i++) {
      n++;
    }

    return n;
  });

  future.then((int value) => print(value));

  print("Hello!");
}
