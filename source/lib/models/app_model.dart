import 'package:json_annotation/json_annotation.dart';
part 'app_model.g.dart';

@JsonSerializable()
class Feed {
  String id;
  String title;
  String updated;
  String icon;
  String author;
  String link;
  List<Entry> entries;

  Feed(
      {this.id,
      this.title,
      this.updated,
      this.icon,
      this.author,
      this.link,
      this.entries});

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
@JsonSerializable()
class Entry {
  String title;
  String id;
  String author;
  String published;
  String updated;
  String dctermsLanguage;
  String dctermsPublisher;
  String dctermsIssued;
  String summary;
  List<Category> category;
  String link;
  String image;

  Entry(
      {this.title,
      this.id,
      this.author,
      this.published,
      this.updated,
      this.dctermsLanguage,
      this.dctermsPublisher,
      this.dctermsIssued,
      this.summary,
      this.category,
      this.image,
      this.link});

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
  Map<String, dynamic> toJson() => _$EntryToJson(this);
}

@JsonSerializable()
class Category {
  String label;
  String term;
  String scheme;
  Feed feed;

  Category({this.label, this.term, this.scheme, this.feed});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
