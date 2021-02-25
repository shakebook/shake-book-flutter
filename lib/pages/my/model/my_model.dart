// To parse this JSON data, do
//
//     final myModel = myModelFromJson(jsonString);

import 'dart:convert';

MyModel myModelFromJson(String str) => MyModel.fromJson(json.decode(str));

String myModelToJson(MyModel data) => json.encode(data.toJson());

class MyModel {
  MyModel({
    this.imageUrl,
    this.userName,
    this.thumbsUp,
    this.focusNumber,
    this.fansNumber,
    this.id,
  });

  String imageUrl;
  String userName;
  int thumbsUp;
  int focusNumber;
  int fansNumber;
  String id;

  factory MyModel.fromJson(Map<String, dynamic> json) => MyModel(
        imageUrl: json["imageUrl"],
        userName: json["userName"],
        thumbsUp: json["thumbsUp"],
        focusNumber: json["focusNumber"],
        fansNumber: json["fansNumber"],
        id: json["ID"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "userName": userName,
        "thumbsUp": thumbsUp,
        "focusNumber": focusNumber,
        "fansNumber": fansNumber,
        "ID": id,
      };
}
