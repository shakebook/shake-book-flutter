// To parse this JSON data, do
//
//     final focusListModel = focusListModelFromJson(jsonString);

import 'dart:convert';

FocusListModel focusListModelFromJson(String str) =>
    FocusListModel.fromJson(json.decode(str));

String focusListModelToJson(FocusListModel data) => json.encode(data.toJson());

class FocusListModel {
  FocusListModel({
    this.list,
  });

  List<ListElement> list;

  factory FocusListModel.fromJson(Map<String, dynamic> json) => FocusListModel(
        list: List<ListElement>.from(
            json["list"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}

class ListElement {
  ListElement({
    this.id,
    this.imageUrl,
    this.userName,
    this.desc,
    this.focus,
  });

  String id;
  String imageUrl;
  String userName;
  String desc;
  bool focus;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        imageUrl: json["imageUrl"],
        userName: json["userName"],
        desc: json["desc"],
        focus: json["focus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imageUrl": imageUrl,
        "userName": userName,
        "desc": desc,
        "focus": focus,
      };
}
