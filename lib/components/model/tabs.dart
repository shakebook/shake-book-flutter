import 'dart:convert';

TabsModel tabsModelFromJson(String str) => TabsModel.fromJson(json.decode(str));

String tabsModelToJson(TabsModel data) => json.encode(data.toJson());

class TabsModel {
  TabsModel({
    this.tabs,
  });

  List<String> tabs;

  factory TabsModel.fromJson(Map<String, dynamic> json) => TabsModel(
        tabs: List<String>.from(json["tabs"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "tabs": List<dynamic>.from(tabs.map((x) => x)),
      };
}
