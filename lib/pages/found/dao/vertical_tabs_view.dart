import 'dart:convert';

VerticalTabsViewMoel verticalTabsViewMoelFromJson(String str) =>
    VerticalTabsViewMoel.fromJson(json.decode(str));

String verticalTabsViewMoelToJson(VerticalTabsViewMoel data) =>
    json.encode(data.toJson());

class VerticalTabsViewMoel {
  VerticalTabsViewMoel({
    this.contents,
  });

  List<Content> contents;

  factory VerticalTabsViewMoel.fromJson(Map<String, dynamic> json) =>
      VerticalTabsViewMoel(
        contents: List<Content>.from(
            json["contents"].map((x) => Content.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "contents": List<dynamic>.from(contents.map((x) => x.toJson())),
      };
}

class Content {
  Content({
    this.url,
    this.title,
    this.list,
  });

  String url;
  String title;
  List<String> list;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        url: json["url"],
        title: json["title"],
        list: List<String>.from(json["list"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "title": title,
        "list": List<dynamic>.from(list.map((x) => x)),
      };
}
