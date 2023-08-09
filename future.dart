void main(List<String> args) {
  print("Mama sends her boy to get bread");
  print("Boy goes out to get bread");
  
  process()
      .then((val) => print(val))
      .catchError((err) => print(err))
      .whenComplete(() => print("done"));

  print("Cheez and olive are ready");
  print("Breakfast is ready");
}

Future<String> process() {
  Future<String> result = Future.delayed(Duration(seconds: 2), () {
    return "Boy comes home";
  });

  return result;
}
