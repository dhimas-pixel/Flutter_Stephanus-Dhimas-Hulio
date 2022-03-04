import 'dart:math';

void main() async {
  var acak = Random();
  List<int> numbers = [];
  for (var i = 0; i < 5; i++) {
    numbers.add(acak.nextInt(100));
  }
  int ranNum = acak.nextInt(10);
  var wMap = await withMap(numbers, ranNum);
  // Output
  print("\nHasil Perkalian dari \n$numbers x $ranNum = $wMap");
}

Future<List> withMap(List<int> data, int pengali) async {
  return Future.delayed(Duration(seconds: 2), () {
    // pakai fungsi list map
    var hasil = data.map((number) => number * pengali).toList();
    return hasil;
  });
}
