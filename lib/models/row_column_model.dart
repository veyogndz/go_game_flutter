
import 'dart:convert';

RowColumnModel rowColumnModelFromJson(String str) => RowColumnModel.fromJson(json.decode(str));

String rowColumnModelToJson(RowColumnModel data) => json.encode(data.toJson());

class RowColumnModel {
  RowColumnModel({
    required this.row,
    required this.col,
  });

  int row;
  int col;

  factory RowColumnModel.fromJson(Map<String, dynamic> json) => RowColumnModel(
    row: json["row"],
    col: json["col"],
  );

  Map<int, int> toJson() => {
      col:row,
   // col : col,
  };
}
