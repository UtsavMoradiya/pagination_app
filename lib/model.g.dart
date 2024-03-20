// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SamplePosts _$SamplePostsFromJson(Map<String, dynamic> json) => SamplePosts(
      albumId: json['albumId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$SamplePostsToJson(SamplePosts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('albumId', instance.albumId);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('url', instance.url);
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  return val;
}
