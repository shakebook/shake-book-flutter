// To parse this JSON data, do
//
//     final commentsListModel = commentsListModelFromJson(jsonString);

import 'dart:convert';

CommentsListModel commentsListModelFromJson(String str) =>
    CommentsListModel.fromJson(json.decode(str));

String commentsListModelToJson(CommentsListModel data) =>
    json.encode(data.toJson());

class CommentsListModel {
  CommentsListModel({
    this.list,
  });

  List<ListElement> list;

  factory CommentsListModel.fromJson(Map<String, dynamic> json) =>
      CommentsListModel(
        list: List<ListElement>.from(
            json["list"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}

class ListElement {
  ListElement({
    this.videoId,
    this.userId,
    this.userName,
    this.userImageUrl,
    this.comment,
    this.thumbsUp,
    this.level,
  });

  int videoId;
  int userId;
  String userName;
  String userImageUrl;
  String comment;
  int thumbsUp;
  int level;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        videoId: json["videoId"],
        userId: json["userId"],
        userName: json["userName"],
        userImageUrl: json["userImageUrl"],
        comment: json["comment"],
        thumbsUp: json["thumbsUp"],
        level: json["level"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "userId": userId,
        "userName": userName,
        "userImageUrl": userImageUrl,
        "comment": comment,
        "thumbsUp": thumbsUp,
        "level": level,
      };
}
