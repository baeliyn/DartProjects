main(List<String> args) {

  //MAP
  Map<String, int> codes = {"ankara": 0006, "istanbul": 006};

  print(codes);
  print(codes["istanbul"]);

  Map<String, dynamic> bera = {"soyad": "kurt", "yas": 32};

  print(bera['yas']);

  Map<String, dynamic> test = Map();
  Map<String, dynamic> test2 = {};

  test2['yas'] = 55;

  for (var element in bera.keys) {
    print(bera[element]);
  }

  //SET

  Set<String> j = Set();
  j.add("saigou");
  j.add("tsugi");
  j.add("saishou");

  print(j);

  Set<String> numbers = Set.from(["1", "2", "3"]);

  print(numbers);

  //LIST

  //five 0's
  List<int> numbers2 = List.filled(5, 0, growable: false);
  numbers2[0] = 1;
  numbers2.setAll(1, [1, 2, 3]);

  if (numbers2.contains(1)) {
    print(numbers2);
  }

  List<dynamic> sayilar = [];

  sayilar.add(1);
  sayilar.length = 20;
  print(sayilar);

}
