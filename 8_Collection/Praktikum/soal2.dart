void main(List<String> args) {
  List vList = [
    ["Cewek 1", "Gpp"],
    ["Cewek 2", "Terserah"],
    ["Cewek 3", "Y"],
    ["Cewek 4", "Yaudah"]
  ];

  print("\nElement dari vList : $vList\n");

// Output
  for (var i = 0; i < vList.length; i++) {
    print("Element index ke -$i : " + vList[i].toString());
    for (var j = 0; j < 2; j++) {
      print("Sub Element index ke -$j : " + vList[i][j]);
    }
  }

// convert list to map
  Map vMap = {for (var item in vList) item[0]: item[1]};
  print("\nConvert List to Map : $vMap\n");
}
