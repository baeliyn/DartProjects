void main(List<String> args) async {
  print("Mama sends her boy to get bread");
  print("Boy goes out to get bread");

  /*
  This would wait
  String line = await process();
  print(line);
  */

  bring();

  print("Cheez and olive are ready");
  print("Breakfast is ready");
}

void bring() async {
  String line = await process();
  print(line);
}

Future<String> process() {
  Future<String> result = Future.delayed(Duration(seconds: 2), () {
    return "Boy comes home";
  });

  return result;
}
