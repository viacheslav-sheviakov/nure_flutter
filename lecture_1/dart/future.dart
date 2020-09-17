void main() {
  Future<int> future = Future(() {
    var n = 0;

    for (int i = 0; i < 1e6; i++) {
      n++;
    }

    return n;
  });

  future.then((value) => print(value));

  print("Hello!");
}
