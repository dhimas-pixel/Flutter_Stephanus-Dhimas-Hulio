class ModelContacts {
  final String name;
  final String number;
  final String gender;
  final String agama;
  final List<DataHobi> hobi;

  ModelContacts({
    required this.name,
    required this.number,
    required this.gender,
    required this.agama,
    required this.hobi,
  });
}

class DataHobi {
  final String title;
  bool nilai;

  DataHobi({required this.title, this.nilai = false});
}

List<ModelContacts> items = [
  ModelContacts(
    name: "Wildan",
    number: "+62 812-7862-9990",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Tidur", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Ferdi",
    number: "+62 813-2133-0484",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Mole", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Akil",
    number: "+62 821-5803-5370",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Ngoding", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Riani",
    number: "+62 831-6204-7642",
    gender: "Wanita",
    agama: "Islam",
    hobi: [DataHobi(title: "Selingkuh", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Beny",
    number: "+62 813-9091-9501",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Tidur", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Dayat",
    number: "+62 895-6323-12548",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Koleksi Pasangan", nilai: true)].toList(),
  ),
  ModelContacts(
    name: "Dadang",
    number: "+62 858-0113-4007",
    gender: "Pria",
    agama: "Islam",
    hobi: [DataHobi(title: "Merendah", nilai: true)].toList(),
  ),
];
