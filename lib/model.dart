import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class SamplePosts {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  SamplePosts({
     this.albumId,
     this.id,
     this.title,
     this.url,
     this.thumbnailUrl,
  });

  factory SamplePosts.fromJson(Map<String, dynamic> json)  => _$SamplePostsFromJson(json);

  Map<String, dynamic> toJson() => _$SamplePostsToJson(json as SamplePosts);
}
