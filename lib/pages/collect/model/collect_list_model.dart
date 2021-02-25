// To parse this JSON data, do
//
//     final collectListModel = collectListModelFromJson(jsonString);

import 'dart:convert';

CollectListModel collectListModelFromJson(String str) =>
    CollectListModel.fromJson(json.decode(str));

String collectListModelToJson(CollectListModel data) =>
    json.encode(data.toJson());

class CollectListModel {
  CollectListModel({
    this.list,
  });

  List<ListElement> list;

  factory CollectListModel.fromJson(Map<String, dynamic> json) =>
      CollectListModel(
        list: List<ListElement>.from(
            json["list"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}

class ListElement {
  ListElement({
    this.imageUrl,
    this.title,
    this.desc,
    this.userName,
    this.collect,
  });

  String imageUrl;
  String title;
  String desc;
  String userName;
  String collect;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        imageUrl: json["imageURL"],
        title: json["title"],
        desc: json["desc"],
        userName: json["userName"],
        collect: json["collect"],
      );

  Map<String, dynamic> toJson() => {
        "imageURL": imageUrl,
        "title": title,
        "desc": desc,
        "userName": userName,
        "collect": collect,
      };
}
