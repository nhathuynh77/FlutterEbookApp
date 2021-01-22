// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
    id: json['id'] as String,
    title: json['title'] as String,
    updated: json['updated'] as String,
    icon: json['icon'] as String,
    author: json['author'] as String,
    link: json['link'] as String,
    entries: (json['entries'] as List)
        ?.map(
            (e) => e == null ? null : Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'updated': instance.updated,
      'icon': instance.icon,
      'author': instance.author,
      'link': instance.link,
      'entries': instance.entries,
    };

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry(
    title: json['title'] as String,
    id: json['id'] as String,
    author: json['author'] as String,
    published: json['published'] as String,
    updated: json['updated'] as String,
    dctermsLanguage: json['dctermsLanguage'] as String,
    dctermsPublisher: json['dctermsPublisher'] as String,
    dctermsIssued: json['dctermsIssued'] as String,
    summary: json['summary'] as String,
    category: (json['category'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: json['image'] as String,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'author': instance.author,
      'published': instance.published,
      'updated': instance.updated,
      'dctermsLanguage': instance.dctermsLanguage,
      'dctermsPublisher': instance.dctermsPublisher,
      'dctermsIssued': instance.dctermsIssued,
      'summary': instance.summary,
      'category': instance.category,
      'link': instance.link,
      'image': instance.image,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    label: json['label'] as String,
    term: json['term'] as String,
    scheme: json['scheme'] as String,
    feed: json['feed'] == null
        ? null
        : Feed.fromJson(json['feed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'label': instance.label,
      'term': instance.term,
      'scheme': instance.scheme,
      'feed': instance.feed,
    };
