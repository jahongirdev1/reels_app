import 'links_model.dart';
import 'tag_model.dart';
import 'topik_submissions_model.dart';
import 'urls_model.dart';
import 'user_model.dart';

class Result {
  const Result({
    required this.id,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.breadcrumbs,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.topicSubmissions,
    required this.user,
    required this.tags,
  });

  final String? id;
  final String? slug;
  final String? createdAt;
  final String? updatedAt;
  final String? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final List<Object?> breadcrumbs;
  final Urls? urls;
  final Links? links;
  final int? likes;
  final bool? likedByUser;
  final List<Object?>? currentUserCollections;
  final Object? sponsorship;
  final TopicSubmissions? topicSubmissions;
  final User? user;
  final List<Tag>? tags;

  factory Result.fromJson(Map<String, Object?> json) => Result(
        id: json['id'] as String?,
        slug: json['slug'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        promotedAt: json['promoted_at'] as String?,
        width: json['width'] as int?,
        height: json['height'] as int?,
        color: json['color'] as String?,
        blurHash: json['blur_hash'] as String?,
        description: json['description'] as String?,
        altDescription: json['alt_description'] as String?,
        breadcrumbs: json['breadcrumbs'] != null
            ? List<Object?>.from(json["breadcrumbs"] as List)
            : [],
        urls: json['urls'] != null
            ? Urls.fromJson(
                json["urls"] as Map<String, Object?>,
              )
            : null,
        links: json['links'] != null
            ? Links.fromJson(
                json["links"] as Map<String, Object?>,
              )
            : null,
        likes: json['likes'] as int?,
        likedByUser: json['liked_by_user'] as bool?,
        currentUserCollections: json['current_user_collections'] != null
            ? List.from(json["current_user_collections"] as List)
            : [],
        sponsorship: json['sponsorship'],
        topicSubmissions: json['topic_submissions'] != null
            ? TopicSubmissions.fromJson(
                json["topic_submissions"] as Map<String, Object?>,
              )
            : null,
        user: json['user'] != null
            ? User.fromJson(
                json["user"] as Map<String, Object?>,
              )
            : null,
        tags: json['tags'] != null
            ? (json["tags"] as List).map((e) => Tag.fromJson(e)).toList()
            : [],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Result &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          slug == other.slug &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          promotedAt == other.promotedAt &&
          width == other.width &&
          height == other.height &&
          color == other.color &&
          blurHash == other.blurHash &&
          description == other.description &&
          altDescription == other.altDescription &&
          breadcrumbs == other.breadcrumbs &&
          urls == other.urls &&
          links == other.links &&
          likes == other.likes &&
          likedByUser == other.likedByUser &&
          currentUserCollections == other.currentUserCollections &&
          sponsorship == other.sponsorship &&
          topicSubmissions == other.topicSubmissions &&
          user == other.user &&
          tags == other.tags;

  @override
  int get hashCode =>
      id.hashCode ^
      slug.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      promotedAt.hashCode ^
      width.hashCode ^
      height.hashCode ^
      color.hashCode ^
      blurHash.hashCode ^
      description.hashCode ^
      altDescription.hashCode ^
      breadcrumbs.hashCode ^
      urls.hashCode ^
      links.hashCode ^
      likes.hashCode ^
      likedByUser.hashCode ^
      currentUserCollections.hashCode ^
      sponsorship.hashCode ^
      topicSubmissions.hashCode ^
      user.hashCode ^
      tags.hashCode;

  @override
  String toString() => 'Result(id: $id,'
      ' slug: $slug,'
      ' createdAt: $createdAt,'
      ' updatedAt: $updatedAt,'
      ' promotedAt: $promotedAt,'
      ' width: $width,'
      ' height: $height,'
      ' color: $color,'
      ' blurHash: $blurHash,'
      ' description: $description,'
      ' altDescription: $altDescription,'
      ' breadcrumbs: $breadcrumbs,'
      ' urls: $urls,'
      ' links: $links,'
      ' likes: $likes,'
      ' likedByUser: $likedByUser,'
      ' currentUserCollections: $currentUserCollections,'
      ' sponsorship: $sponsorship,'
      ' topicSubmissions: $topicSubmissions,'
      ' user: $user,'
      ' tags: $tags,'
      ')';

  Result copyWith({
    String? id,
    String? slug,
    String? createdAt,
    String? updatedAt,
    String? promotedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    String? description,
    String? altDescription,
    List<Object?>? breadcrumbs,
    Urls? urls,
    Links? links,
    int? likes,
    bool? likedByUser,
    List<Object?>? currentUserCollections,
    Object? sponsorship,
    TopicSubmissions? topicSubmissions,
    User? user,
    List<Tag>? tags,
  }) =>
      Result(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        promotedAt: promotedAt ?? this.promotedAt,
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        blurHash: blurHash ?? this.blurHash,
        description: description ?? this.description,
        altDescription: altDescription ?? this.altDescription,
        breadcrumbs: breadcrumbs ?? this.breadcrumbs,
        urls: urls ?? this.urls,
        links: links ?? this.links,
        likes: likes ?? this.likes,
        likedByUser: likedByUser ?? this.likedByUser,
        currentUserCollections:
            currentUserCollections ?? this.currentUserCollections,
        sponsorship: sponsorship ?? this.sponsorship,
        topicSubmissions: topicSubmissions ?? this.topicSubmissions,
        user: user ?? this.user,
        tags: tags ?? this.tags,
      );
}
