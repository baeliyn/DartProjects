import 'dart:async';

void main(List<String> args) {
  List<dynamic> list = ["Ruby", "JS", "HTML"];

  addLang(list, getAllLangs);
}

void addLang(List<dynamic> list, Function callback) {
  final timer = Timer(Duration(seconds: 20), () => print('addLang'));
  timer.cancel();
  list.add("Dart");
  callback(list);
}

void getAllLangs(List<dynamic> list) {
  final timer = Timer(Duration(seconds: 10), () => print('allLangs'));
  timer.cancel();
  for (var language in list) {
    print(language);
  }
}
