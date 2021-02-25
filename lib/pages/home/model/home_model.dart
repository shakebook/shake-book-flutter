// To parse this JSON data, do
//
//     final homeListModel = homeListModelFromJson(jsonString);

import 'dart:convert';

HomeListModel homeListModelFromJson(String str) =>
    HomeListModel.fromJson(json.decode(str));

String homeListModelToJson(HomeListModel data) => json.encode(data.toJson());

class HomeListModel {
  HomeListModel({
    this.list,
  });

  List<ListElement> list;

  factory HomeListModel.fromJson(Map<String, dynamic> json) => HomeListModel(
        list: List<ListElement>.from(
            json["list"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}

class ListElement {
  ListElement({
    this.userName,
    this.videoUrl,
    this.title,
    this.desc,
    this.thumbsUp,
    this.favorite,
  });

  String userName;
  String videoUrl;
  String title;
  String desc;
  int thumbsUp;
  bool favorite;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        userName: json["userName"],
        videoUrl: json["videoUrl"],
        title: json["title"],
        desc: json["desc"],
        thumbsUp: json["thumbsUp"],
        favorite: json["favorite"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "videoUrl": videoUrl,
        "title": title,
        "desc": desc,
        "thumbsUp": thumbsUp,
        "favorite": favorite,
      };
}
