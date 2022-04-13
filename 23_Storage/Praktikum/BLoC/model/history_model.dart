import 'dart:convert';

import 'dart:ffi';

class HistoryModel {
  final String name;
  final String number;
  final String date;

  HistoryModel({
    required this.name,
    required this.number,
    required this.date,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> jsonData) {
    return HistoryModel(
      name: jsonData['name'],
      number: jsonData['number'],
      date: jsonData['date'],
    );
  }

  static Map<String, dynamic> toMap(HistoryModel historyModel) => {
        "name": historyModel.name,
        "number": historyModel.number,
        "date": historyModel.date,
      };

  static String encode(List<HistoryModel> getModel) => json.encode(
        getModel
            .map<Map<String, dynamic>>(
                (historyModel) => HistoryModel.toMap(historyModel))
            .toList(),
      );

  static List<HistoryModel> decode(String getModel) =>
      (json.decode(getModel) as List<dynamic>)
          .map((item) => HistoryModel.fromJson(item))
          .toList();
}
